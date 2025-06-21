#tag Class
Protected Class TokensStartState
Inherits ANTLR4Runtime.Atn.DecisionState
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return StateType.TokenStart
			End Get
		#tag EndGetter
		TypeState As StateType
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="decision"
			Group="Behavior"
			InitialValue="-1"
			Type="Integer"
			InheritedFrom="ANTLR4Runtime.Atn.DecisionState"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EpsilonOnlyTransitions"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			InheritedFrom="ANTLR4Runtime.Atn.ATNState"
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
			Name="nonGreedy"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ANTLR4Runtime.Atn.DecisionState"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RuleIndex"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="ANTLR4Runtime.Atn.ATNState"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StateNumber"
			Group="Behavior"
			InitialValue="INVALID_STATE_NUMBER"
			Type="Integer"
			InheritedFrom="ANTLR4Runtime.Atn.ATNState"
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
