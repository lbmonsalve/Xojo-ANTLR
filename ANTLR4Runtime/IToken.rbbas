#tag Interface
Protected Interface IToken
	#tag Method, Flags = &h0
		Function Channerl() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Column() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InputStream() As ICharStream
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Line() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartIndex() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopIndex()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Text() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TokenIndex() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TokenSource() As ITokenSource
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Type() As Integer
		  
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
