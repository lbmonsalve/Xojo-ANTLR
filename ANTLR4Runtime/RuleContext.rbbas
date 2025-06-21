#tag Class
Protected Class RuleContext
Implements ANTLR4Runtime.Tree.IRuleNode
	#tag Method, Flags = &h0
		Function Accept(visitor As ANTLR4Runtime.Tree.IParseTreeVisitor) As Variant
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ChildCount() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetChild(i As Integer) As ANTLR4Runtime.Tree.ITree
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetParent() As RuleContext
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetText() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Payload() As Object
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RuleContextRule() As ANTLR4Runtime.Tree.IRuleNode
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourceInterval() As ANTLR4Runtime.Misc.Interval
		  
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
End Class
#tag EndClass
