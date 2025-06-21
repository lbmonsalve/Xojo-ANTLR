#tag Class
Protected Class DecisionState
Inherits ANTLR4Runtime.Atn.ATNState
	#tag Property, Flags = &h0
		decision As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		nonGreedy As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="decision"
			Group="Behavior"
			InitialValue="-1"
			Type="Integer"
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
