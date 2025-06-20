#tag Interface
Protected Interface IIntStream
	#tag Method, Flags = &h0
		Sub Consume()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSourceName() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Index() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LA(i As Integer) As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Mark() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Release(marker As Integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Seek(index As Integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Size() As Integer
		  
		End Function
	#tag EndMethod


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
End Interface
#tag EndInterface
