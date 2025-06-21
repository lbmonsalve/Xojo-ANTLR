#tag Interface
Protected Interface IRecognizer
	#tag Method, Flags = &h0
		Function Atn() As ANTLR4Runtime.Atn.ATNBase
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GrammarFileName() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InputStream() As IIntStream
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RuleNames() As String()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function State() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Vocabulary() As IVocabulary
		  
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
