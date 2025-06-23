#tag Class
Protected Class IntervalSet
Implements IIntSet
	#tag Method, Flags = &h0
		Sub Add(el As Integer)
		  If Readonly Then Raise GetException("InvalidOperationException: can't alter readonly IntervalSet")
		  
		  Add el, el
		  
		  /// <summary>Add a single element to the set.</summary>
		  /// <remarks>
		  /// Add a single element to the set.  An isolated element is stored
		  /// as a range el..el.
		  /// </remarks>
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add(a As Integer, b As Integer)
		  Add Interval.Of_(a, b)
		  
		  /// <summary>Add interval; i.e., add all integers from a to b to set.</summary>
		  /// <remarks>
		  /// Add interval; i.e., add all integers from a to b to set.
		  /// If b&lt;a, do nothing.
		  /// Keep list in sorted order (by left range value).
		  /// If overlap, combine ranges.  For example,
		  /// If this is {1..5, 10..20}, adding 6..7 yields
		  /// {1..5, 6..7, 10..20}.  Adding 4..8 yields {1..8, 10..20}.
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add(addition As Interval)
		  If Readonly Then Raise GetException("InvalidOperationException: can't alter readonly IntervalSet")
		  If addition.B< addition.A Then Return
		  
		  // find position in list
		  // Use iterators as we modify list in place
		  For i As Integer= 0 To Intervals.LastIndexAntlr
		    Dim r As Interval= Intervals(i)
		    If addition= r Then Return
		    
		    If addition.Adjacent(r) Or Not(addition.Disjoint(r)) Then
		      // next to each other, make a single larger interval
		      Dim bigger As Interval= addition.Union(r)
		      Intervals(i)= bigger
		      
		      // make sure we didn't just create an interval that
		      // should be merged with next interval in list
		      While i< Intervals.LastIndexAntlr
		        i= i+ 1
		        Dim nextI As Interval= Intervals(i)
		        If Not(bigger.Adjacent(nextI)) And bigger.Disjoint(nextI) Then Exit While
		        
		        // if we bump up against or overlap next, merge
		        Intervals.Remove i
		        
		        // remove this one
		        i= i- 1
		        
		        // move backwards to what we just set
		        Intervals(i)= bigger.Union(nextI)
		        // set to 3 merged ones
		        
		      Wend
		      // first call to next after previous duplicates the result
		      Return
		    End If
		    
		    If addition.StartsBeforeDisjoint(r) Then
		      // insert before r
		      Intervals.Insert i, addition
		      Return
		    End If
		  Next
		  
		  // if disjoint and after r, a future iteration will handle it
		  // ok, must be after last interval (and disjoint from last interval)
		  // just add it
		  Intervals.Append addition
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddAll(set As IIntSet) As IIntSet
		  If set Is Nil Then Return Self
		  
		  If set IsA IntervalSet Then
		    Dim other As IntervalSet= IntervalSet(set)
		    
		    // walk set and add each interval
		    For i As Integer= 0 To other.Intervals.LastIndexAntlr
		      Add other.Intervals(i)
		    Next
		    
		  Else
		    Dim els() As Integer= set.ToList
		    For Each el As Integer In els
		      Add el
		    Next
		  End If
		  
		  Return Self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function And_(a As IIntSet) As IIntSet
		  If a Is Nil Or a.IsNil Then Return New IntervalSet(Self)
		  
		  // nothing in common with null set
		  Dim mineIntervals() As Interval= Self.Intervals
		  Dim otheIntervals() As Interval= IntervalSet(a).Intervals
		  Dim intersection As IntervalSet
		  Dim mineSize As Integer= mineIntervals.CountAntlr
		  Dim otheSize As Integer= otheIntervals.CountAntlr
		  Dim i, j As Integer
		  
		  // iterate down both interval lists looking for nondisjoint intervals
		  While i< mineSize And j< otheSize
		    Dim mine As Interval= mineIntervals(i)
		    Dim othe As Interval= otheIntervals(j)
		    
		    If mine.StartsBeforeDisjoint(othe) Then
		      i= i+ 1 // move this iterator looking for interval that might overlap
		    Else
		      If othe.StartsBeforeDisjoint(mine) Then
		        j= j+ 1 // move other iterator looking for interval that might overlap
		      Else
		        If mine.ProperlyContains(othe) Then
		          // overlap, add intersection, get next theirs
		          If intersection Is Nil Then intersection= New IntervalSet
		          intersection.Add mine.Intersection(othe)
		          j= j+ 1
		        Else
		          If othe.ProperlyContains(mine) Then
		            // overlap, add intersection, get next mine
		            If intersection Is Nil Then intersection= New IntervalSet
		            intersection.Add mine.Intersection(othe)
		            i= i+ 1
		          Else
		            If Not(mine.Disjoint(othe)) Then
		              // overlap, add intersection
		              If intersection Is Nil Then intersection= New IntervalSet
		              intersection.Add mine.Intersection(othe)
		              // Move the iterator of lower range [a..b], but not
		              // the upper range as it may contain elements that will collide
		              // with the next iterator. So, if mine=[0..115] and
		              // theirs=[115..200], then intersection is 115 and move mine
		              // but not theirs as theirs may collide with the next range
		              // in thisIter.
		              // move both iterators to next ranges
		              If mine.StartsAfterNonDisjoint(othe) Then
		                j= j+ 1
		              Else
		                If othe.StartsAfterNonDisjoint(mine) Then
		                  i= i+ 1
		                End If
		              End If
		            End If
		          End If
		        End If
		      End If
		    End If
		    
		  Wend
		  
		  If intersection Is Nil Then Return New IntervalSet
		  
		  Return intersection
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  If Readonly Then Raise GetException("InvalidOperationException: can't alter readonly IntervalSet")
		  
		  Intervals.ResizeToAntlr 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Complement(elems As IIntSet) As IIntSet
		  If elems Is Nil Or elems.IsNil Then Return Nil
		  
		  // nothing in common with null set
		  Dim elemsIS As IntervalSet
		  If elems IsA IntervalSet Then
		    elemsIS= IntervalSet(elems)
		  Else
		    elemsIS= New IntervalSet
		    Call elemsIS.AddAll elems
		  End If
		  
		  Return elemsIS.Substract(Self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Paramarray els As Integer)
		  For Each el As Integer In els
		    Add el
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(intervals() As Interval)
		  Self.Intervals= intervals
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(set As IntervalSet)
		  Call AddAll set
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contains(el As Integer) As Boolean
		  For i As Integer= 0 To Intervals.LastIndexAntlr
		    Dim inter As Interval= Intervals(i)
		    If el< inter.A Then Exit For
		    If el>= inter.A And el<= inter.B Then Return True
		  Next
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As Integer
		  Dim n As Integer
		  Dim numIntervals As Integer= Intervals.CountAntlr
		  
		  If numIntervals= 1 Then
		    Dim firstInterval As Interval= Intervals(0)
		    Return firstInterval.B- firstInterval.A+ 1
		  End If
		  
		  For Each inte As Interval In Intervals
		    n= n+ inte.B- inte.A+ 1
		  Next
		  
		  Return n
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(obj As IIntSet) As Boolean
		  If obj Is Nil Or Not(obj IsA IntervalSet) Then Return False
		  
		  Dim other As IntervalSet= IntervalSet(obj)
		  If Intervals.CountAntlr<> other.Intervals.CountAntlr Then Return False
		  
		  Dim lastIndex As Integer= Intervals.LastIndexAntlr
		  For i As Integer= 0 To lastIndex
		    Dim a As Interval= Intervals(i)
		    Dim b As Interval= other.Intervals(i)
		    If Not(a= b) Then Return False
		  Next
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetException(msg As String, Optional errorNumber As Integer) As RuntimeException
		  Dim ret As New RuntimeException
		  ret.Message= msg
		  ret.ErrorNumber= errorNumber
		  
		  Return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetIntervals() As Interval()
		  Return Intervals
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNil() As Boolean
		  Return Intervals.CountAntlr= 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Of_(a As Integer) As IntervalSet
		  Dim ret As New IntervalSet
		  ret.Add a
		  
		  Return ret
		  
		  /// <summary>Create a set with a single element, el.</summary>
		  /// <remarks>Create a set with a single element, el.</remarks>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Of_(a As Integer, b As Integer) As IntervalSet
		  Dim ret As New IntervalSet
		  ret.Add a, b
		  
		  Return ret
		  
		  /// <summary>Create a set with all ints within range [a..b] (inclusive)</summary>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(rhs As IntervalSet) As Integer
		  If Equals(rhs) Then Return 0
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Or_(a As IIntSet) As IIntSet
		  Dim ret As New IntervalSet
		  Call ret.AddAll Self
		  Call ret.AddAll a
		  
		  Return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove(el As Integer)
		  If Readonly Then Raise GetException("InvalidOperationException: can't alter readonly IntervalSet")
		  
		  Dim lastIndex As Integer= Intervals.LastIndexAntlr
		  For i As Integer= 0 To lastIndex
		    Dim inte As Interval= Intervals(i)
		    Dim a As Integer= inte.A
		    Dim b As Integer= inte.B
		    
		    If el< a Then Return
		    
		    // list is sorted and el is before this interval; not here
		    // if whole interval x..x, rm
		    If el= a And el= b Then
		      Intervals.Remove i
		      Return
		    End If
		    
		    // if on left edge x..b, adjust left
		    If el= a Then
		      Intervals(i)= Interval.Of_(a+ 1, b)
		      Return
		    End If
		    
		    // if on right edge a..x, adjust right
		    If el= b Then
		      Intervals(i)= Interval.Of_(a, b- 1)
		      Return
		    End If
		    
		    // if in middle a..x..b, split interval
		    If el> a And el< b Then
		      // found in this interval
		      Intervals(i)= Interval.Of_(a, el- 1)
		      Add el+ 1, b
		    End If
		    
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetReadonly(setReadOnly As Boolean)
		  If Self.Readonly And Not(setReadOnly) Then _
		  Raise GetException("InvalidOperationException: can't alter readonly IntervalSet")
		  
		  Self.Readonly= setReadOnly
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SingleElement() As Integer
		  If Intervals.CountAntlr= 1 Then
		    Dim inte As Interval= Intervals(0)
		    If inte.A= inte.B Then Return inte.A
		  End If
		  
		  Return kInvalidValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Substract(a As IIntSet) As IIntSet
		  If a Is Nil Or a.IsNil Then Return New IntervalSet(Self)
		  
		  If a IsA IntervalSet Then Return Substract(Self, Intervalset(a))
		  
		  Dim other As New IntervalSet
		  Call other.AddAll a
		  
		  Return Substract(Self, other)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Substract(left As IntervalSet, right As IntervalSet) As IntervalSet
		  If left Is Nil Or left.IsNil Then Return New IntervalSet
		  
		  Dim result As New IntervalSet(left)
		  If right Is Nil Or right.IsNil Then Return result
		  
		  Dim resultI, rightI As Integer
		  While resultI< result.Intervals.CountAntlr And rightI< right.Intervals.CountAntlr
		    Dim resultInterval As Interval= result.Intervals(resultI)
		    Dim rightInterval As Interval= right.Intervals(rightI)
		    
		    // operation: (resultInterval - rightInterval) and update indexes
		    If rightInterval.B< resultInterval.A Then
		      rightI= rightI+ 1
		      Continue
		    End If
		    If rightInterval.A> resultInterval.B Then
		      resultI= resultI+ 1
		      Continue
		    End If
		    
		    Dim beforeCurrent, afterCurrent As Interval
		    If rightInterval.A> resultInterval.A Then
		      beforeCurrent= New Interval(resultInterval.A, rightInterval.A- 1)
		    End If
		    If rightInterval.B< resultInterval.B Then
		      afterCurrent= New Interval(rightInterval.B+ 1, resultInterval.B)
		    End If
		    
		    If Not(beforeCurrent Is Nil) Then
		      If Not(afterCurrent Is Nil) Then
		        // split the current interval into two
		        result.Intervals(resultI)= beforeCurrent
		        result.Intervals.Insert resultI+ 1, afterCurrent
		        resultI= resultI+ 1
		        rightI= rightI+ 1
		        Continue
		      Else
		        // replace the current interval
		        result.Intervals(resultI)= beforeCurrent
		        resultI= resultI+ 1
		        Continue
		      End If
		    Else
		      If Not(afterCurrent Is Nil) Then
		        // replace the current interval
		        result.Intervals(resultI)= afterCurrent
		        rightI= rightI+ 1
		        Continue
		      Else
		        // remove the current interval (thus no need to increment resultI)
		        result.Intervals.Remove resultI
		        Continue
		      End If
		    End If
		    
		  Wend
		  
		  // If rightI reached right.intervals.size(), no more intervals to subtract from result.
		  // If resultI reached result.intervals.size(), we would be subtracting from an empty set.
		  // Either way, we are done.
		  Return result
		  
		  
		  /// <summary>Compute the set difference between two interval sets.</summary>
		  /// <remarks>
		  /// Compute the set difference between two interval sets. The specific
		  /// operation is
		  /// <c>left - right</c>
		  /// . If either of the input sets is
		  /// <see langword="null"/>
		  /// , it is treated as though it was an empty set.
		  /// </remarks>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToList() As Integer()
		  Dim values() As Integer
		  
		  Dim n As Integer= Intervals.LastIndexAntlr
		  For i As Integer= 0 To n
		    Dim inte As Interval= Intervals(i)
		    Dim a As Integer= inte.A
		    Dim b As Integer= inte.B
		    For v As Integer= a To b
		      values.Append v
		    Next
		  Next
		  
		  Return values
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return ToString(False)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString(elemAreChar As Boolean) As String
		  If Intervals.CountAntlr= 0 Then Return "{}"
		  
		  Dim buf As New StringBuilder
		  
		  If Count> 1 Then buf.Append "{"
		  
		  Dim first As Boolean= True
		  For Each ii As Interval In Intervals
		    If Not first Then buf.Append(", ")
		    first= false
		    
		    Dim a As Integer= ii.A
		    Dim b As Integer= ii.B
		    
		    If a= b Then
		      If a= IntStream.EOF Then
		        buf.Append "<EOF>"
		      Else
		        If elemAreChar Then
		          buf.Append "'"+ Str(a)+ "'"
		        Else
		          buf.Append a
		        End If
		      End If
		    Else
		      If elemAreChar Then
		        buf.Append "'"+ Str(a)+ "'"
		        buf.Append ".."
		        buf.Append "'"+ Str(b)+ "'"
		      Else
		        buf.Append a
		        buf.Append ".."
		        buf.Append b
		      End If
		    End If
		    
		  Next
		  
		  If Count> 1 Then buf.Append "}"
		  
		  Return buf.ToString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected Intervals() As Interval
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If IsNil Then
			    #if DebugBuild
			      Return kInvalidValue
			    #else
			      Raise GetException("InvalidOperationException: set is empty")
			    #endif
			  End If
			  
			  Return Intervals(Intervals.LastIndexAntlr).B
			End Get
		#tag EndGetter
		MaxElement As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If IsNil Then
			    #if DebugBuild
			      Return kInvalidValue
			    #else
			      Raise GetException("InvalidOperationException: set is empty")
			    #endif
			  End If
			  
			  Return Intervals(0).A
			End Get
		#tag EndGetter
		MinElement As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected Readonly As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxElement"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinElement"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
