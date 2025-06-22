#tag Class
Protected Class ATNBase
	#tag Method, Flags = &h0
		Sub Constructor(grammarType As ATNType, maxTokenType As Integer)
		  Self.grammarType= grammarType
		  Self.maxTokenType= maxTokenType
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCachedContext(context As PredictionContext) As PredictionContext
		  // TODO:
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextTokens(s As ATNState, ctx As Rulecontext) As ANTLR4Runtime.Misc.IntervalSet
		  Dim anali As New LL1Analyzer(Self)
		  Dim nexti As ANTLR4Runtime.Misc.IntervalSet= anali.Look(s, ctx)
		  
		  Return nexti
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		contextCache As PredictionContextCache
	#tag EndProperty

	#tag Property, Flags = &h0
		decisionToDFA() As ANTLR4Runtime.Dfa.DFABase
	#tag EndProperty

	#tag Property, Flags = &h0
		decisionToState() As DecisionState
	#tag EndProperty

	#tag Property, Flags = &h0
		grammarType As ATNType
	#tag EndProperty

	#tag Property, Flags = &h0
		lexerActions() As ILexerAction
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LL1Table As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		maxTokenType As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		modeNameToStartState As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		modeToDFA() As ANTLR4Runtime.Dfa.DFABase
	#tag EndProperty

	#tag Property, Flags = &h0
		modeToStartState() As TokensStartState
	#tag EndProperty

	#tag Property, Flags = &h0
		ruleToStartState() As RuleStartState
	#tag EndProperty

	#tag Property, Flags = &h0
		ruleToStopState() As RuleStartState
	#tag EndProperty

	#tag Property, Flags = &h0
		ruleToTokenType() As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		states() As ATNState
	#tag EndProperty


	#tag Constant, Name = INVALID_ALT_NUMBER, Type = Double, Dynamic = False, Default = \"0", Scope = Public
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
			Name="maxTokenType"
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
