#tag Class
Protected Class BaseInputCharStream
Implements ICharStream
	#tag Method, Flags = &h0
		Sub Consume()
		  If p>= n Then
		    Assert LA(1)= IntStream.EOF
		    Raise New InvalidOperationException("cannot consume EOF")
		  Else
		    p= p+ 1
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ConvertDataToString(start As Integer, count As Integer) As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSourceName() As String
		  If SourceName.Len= 0 Then Return IntStream.UnknownSourceName
		  
		  Return SourceName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetText(interval As ANTLR4Runtime.Misc.Interval) As String
		  Dim start As Integer= interval.A
		  Dim stop As Integer= interval.B
		  
		  If stop>= n Then stop= n- 1
		  If start>= n Then Return ""
		  
		  Dim count As Integer= stop- start+ 1
		  
		  Return ConvertDataToString(start, count)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Index() As Integer
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LA(i As Integer) As Integer
		  If i= 0 Then Return 0
		  If i< 0 Then
		    i= i+ 1
		    If (p+ i- 1)< 0 Then Return IntStream.EOF
		  End If
		  
		  Return ValueAt(p+ i- 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Lt(i As Integer) As Integer
		  Return LA(i)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Mark() As Integer
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Release(marker As Integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  p= 0
		  
		  /// <summary>
		  /// Reset the stream so that it's in the same state it was
		  /// when the object was created *except* the data array is not
		  /// touched.
		  /// </summary>
		  /// <remarks>
		  /// Reset the stream so that it's in the same state it was
		  /// when the object was created *except* the data array is not
		  /// touched.
		  /// </remarks>
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Seek(idx As Integer)
		  If idx<= p Then
		    p= idx
		    Return
		  End If
		  
		  // seek forward, consume until p hits index or n (whichever comes first)
		  idx= Min(idx, n)
		  While p< idx
		    Consume
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Size() As Integer
		  Return n
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ValueAt(i As Integer) As Integer
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		#tag Note
			/// <summary>How many characters are actually in the buffer</summary>
		#tag EndNote
		Protected n As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			/// <summary>0..n-1 index into string of next char</summary>
		#tag EndNote
		Protected p As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			/// <summary>What is name or source of this char stream?</summary>
		#tag EndNote
		SourceName As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return ConvertDataToString(0, n)
			End Get
		#tag EndGetter
		ToString As String
	#tag EndComputedProperty


	#tag Constant, Name = INITIAL_BUFFER_SIZE, Type = Double, Dynamic = False, Default = \"1024", Scope = Public
	#tag EndConstant

	#tag Constant, Name = READ_BUFFER_SIZE, Type = Double, Dynamic = False, Default = \"1024", Scope = Public
	#tag EndConstant


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
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SourceName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
