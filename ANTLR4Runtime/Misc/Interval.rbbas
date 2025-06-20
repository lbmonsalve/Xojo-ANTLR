#tag Class
Protected Class Interval
	#tag Method, Flags = &h0
		Function Adjacent(other As Interval) As Boolean
		  Return mA= other.A+ 1 Or mB= other.A- 1
		  
		  /// <summary>Are two intervals adjacent such as 0..41 and 42..42?</summary>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(a As Integer, b As Integer)
		  mA= a
		  mB= b
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DifferenceNotProperlyContained(other As Interval) As Interval
		  Dim diff As Interval
		  
		  // other.a to left of this.a (or same)
		  If other.StartsBeforeNonDisjoint(Self) Then
		    diff= Of_(Max(mA, other.B+ 1), mB)
		  ElseIf other.StartsAfterNonDisjoint(Self) Then
		    diff= Of_(mA, other.A- 1)
		  End If
		  
		  Return diff
		  
		  /// <summary>
		  /// Return the interval with elements from
		  /// <c>this</c>
		  /// not in
		  /// <paramref name="other"/>
		  /// ;
		  /// <paramref name="other"/>
		  /// must not be totally enclosed (properly contained)
		  /// within
		  /// <c>this</c>
		  /// , which would result in two disjoint intervals
		  /// instead of the single one returned by this method.
		  /// </summary>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Disjoint(other As Interval) As Boolean
		  Return StartsBeforeDisjoint(other) Or StartsAfterDisjoint(other)
		  
		  // this.b>=other.b implied
		  /// <summary>Are both ranges disjoint? I.e., no overlap?</summary>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HashCode() As Integer
		  Dim hash As Integer= 23
		  hash= hash* 31+ mA
		  hash= hash* 31+ mB
		  
		  Return hash
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Intersection(other As Interval) As Interval
		  Return Of_(Max(mA, other.A), Min(mB, other.B))
		  
		  /// <summary>Return the interval in common between this and o</summary>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Invalid() As Interval
		  Static mInvalid As Interval
		  If mInvalid Is Nil Then mInvalid= New Interval(-1, -2)
		  
		  Return mInvalid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Length() As Integer
		  If mB< mA Then Return 0
		  
		  Return mB- mA+ 1
		  
		  /// <summary>return number of elements between a and b inclusively.</summary>
		  /// <remarks>
		  /// return number of elements between a and b inclusively. x..x is length 1.
		  /// if b &lt; a, then length is 0. 9..10 has length 2.
		  /// </remarks>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Of_(a As Integer, b As Integer) As Interval
		  Return New Interval(a, b)
		  
		  /// <summary>
		  /// Interval objects are used readonly so share all with the
		  /// same single value a==b up to some max size.
		  /// </summary>
		  /// <remarks>
		  /// Interval objects are used readonly so share all with the
		  /// same single value a==b up to some max size.  Use an array as a perfect hash.
		  /// Return shared object for 0..INTERVAL_POOL_MAX_VALUE or a new
		  /// Interval object with a..a in it.  On Java.g4, 218623 IntervalSets
		  /// have a..a (set with 1 element).
		  /// </remarks>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(rhs As Interval) As Integer
		  If mA= rhs.A And mB= rhs.B Then Return 0
		  
		  If mA> rhs.A Or mB> rhs.B Then Return 1
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ProperlyContains(other As Interval) As Boolean
		  Return other.A>= mA And other.B<= mB
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartsAfter(other As Interval) As Boolean
		  Return mA> other.A
		  
		  /// <summary>Does this.a start after other.b? May or may not be disjoint</summary>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartsAfterDisjoint(other As Interval) As Boolean
		  Return mA> other.B
		  
		  /// <summary>Does this start completely after other? Disjoint</summary>
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartsAfterNonDisjoint(other As Interval) As Boolean
		  Return mA> other.A And mA<= other.B
		  
		  /// <summary>Does this start after other? NonDisjoint</summary>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartsBeforeDisjoint(other As Interval) As Boolean
		  Return mA< other.A And mB< other.A
		  
		  /// <summary>Does this start completely before other? Disjoint</summary>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartsBeforeNonDisjoint(other As Interval) As Boolean
		  Return mA<= other.A And mB>= other.A
		  
		  /// <summary>Does this start at or before other? Nondisjoint</summary>
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Union(other As Interval) As Interval
		  Return Of_(Min(mA, other.A), Max(mB, other.B))
		  
		  /// <summary>Return the interval computed from combining this and other</summary>
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mA
			End Get
		#tag EndGetter
		A As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mB
			End Get
		#tag EndGetter
		B As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		#tag Note
			The start of the interval.
		#tag EndNote
		Attributes( Hidden ) Private mA As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			The end of the interval.
		#tag EndNote
		Attributes( Hidden ) Private mB As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Str(mA)+ ".."+ Str(mB)
			End Get
		#tag EndGetter
		ToString As String
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="A"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="B"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
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
		#tag ViewProperty
			Name="ToString"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
