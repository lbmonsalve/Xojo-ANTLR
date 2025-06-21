#tag Interface
Protected Interface ITree
	#tag Method, Flags = &h0
		Function ChildCount() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetChild(i As Integer) As ITree
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetParent() As Object
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Payload() As Object
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToStringTree() As String
		  
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
