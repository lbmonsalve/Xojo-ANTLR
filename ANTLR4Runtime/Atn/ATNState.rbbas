#tag Class
Protected Class ATNState
	#tag Method, Flags = &h0
		Sub AddTransition(index As Integer, e As Transition)
		  If Transitions.CountAntlr= 0 Then
		    EpsilonOnlyTransitions= e.IsEpsilon
		  ElseIf EpsilonOnlyTransitions<> e.IsEpsilon Then
		    System.DebugLog CurrentMethodName+ "ATN state %d has both epsilon and non-epsilon transitions"
		    EpsilonOnlyTransitions= False
		  End If
		  
		  Dim alreadyPresent As Boolean
		  For Each t As Transition In Transitions
		    If t.Target.StateNumber= e.Target.StateNumber Then
		      If Not(t.Label Is Nil) And Not(e.Label Is Nil) And t.Label.Equals(e.Label) Then
		        //
		        alreadyPresent= True
		        Exit For
		      ElseIf t.IsEpsilon And e.IsEpsilon Then
		        //
		        alreadyPresent= True
		        Exit For
		      End If
		    End If
		  Next
		  
		  If Not alreadyPresent Then
		    Transitions(index)= e
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddTransition(e As Transition)
		  AddTransition Transitions.CountAntlr, e
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNumberOfTransitions() As Integer
		  Return Transitions.CountAntlr
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetStateType() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTransitions() As Transition()
		  Return Transitions
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNonGreedyExitState() As Boolean
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OnlyHasEpsilonTransitions() As Boolean
		  Return EpsilonOnlyTransitions
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveTransition(index As Integer) As Transition
		  Dim ret As Transition= Transitions(index)
		  
		  Transitions.Remove index
		  
		  Return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function SerializationNames() As String()
		  Static names() As String
		  If names.LastIndexAntlr= -1 Then
		    names= Array("INVALID", "BASIC", "RULE_START", "BLOCK_START", _
		    "PLUS_BLOCK_START", "STAR_BLOCK_START", "TOKEN_START", _
		    "RULE_STOP", "BLOCK_END", "STAR_LOOP_BACK", "STAR_LOOP_ENTRY", _
		    "PLUS_LOOP_BACK", "LOOP_END")
		  End If
		  
		  Return names
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRuleIndex(ruleIndex As Integer)
		  Self.RuleIndex= ruleIndex
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTransition(i As Integer, e As Transition)
		  Transitions(i)= e
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return Str(StateNumber)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Transition(i As Integer) As Transition
		  Return Transitions(i)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Atn As ATNBase
	#tag EndProperty

	#tag Property, Flags = &h0
		EpsilonOnlyTransitions As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		NextTokenWithinRule As ANTLR4Runtime.Misc.IntervalSet
	#tag EndProperty

	#tag Property, Flags = &h0
		RuleIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		StateNumber As Integer = INVALID_STATE_NUMBER
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Transitions() As Transition
	#tag EndProperty


	#tag Constant, Name = BASIC, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = BLOCK_END, Type = Double, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = BLOCK_START, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = INITIAL_NUM_TRANSITIONS, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = INVALID_STATE_NUMBER, Type = Double, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = INVALID_TYPE, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = LOOP_END, Type = Double, Dynamic = False, Default = \"12", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PLUS_BLOCK_START, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PLUS_LOOP_BACK, Type = Double, Dynamic = False, Default = \"11", Scope = Public
	#tag EndConstant

	#tag Constant, Name = RULE_START, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = RULE_STOP, Type = Double, Dynamic = False, Default = \"7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = STAR_BLOCK_START, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = STAR_LOOP_BACK, Type = Double, Dynamic = False, Default = \"9", Scope = Public
	#tag EndConstant

	#tag Constant, Name = STAR_LOOP_ENTRY, Type = Double, Dynamic = False, Default = \"10", Scope = Public
	#tag EndConstant

	#tag Constant, Name = TOKEN_START, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="EpsilonOnlyTransitions"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
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
			Name="RuleIndex"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StateNumber"
			Group="Behavior"
			InitialValue="INVALID_STATE_NUMBER"
			Type="Integer"
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
