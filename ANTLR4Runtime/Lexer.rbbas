#tag Class
Protected Class Lexer
Implements ITokenSource
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
		Function NextToken() As IToken
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourceName() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TokenFactory() As ITokenFactory
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TokenFactory(value As ITokenFactory)
		  
		End Sub
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
End Class
#tag EndClass
