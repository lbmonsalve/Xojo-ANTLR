#tag Class
Protected Class RuleStopState
Inherits ANTLR4Runtime.Atn.ATNState
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return -1
			End Get
		#tag EndGetter
		NonStopStateNumber As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return StateType.RuleStop
			End Get
		#tag EndGetter
		TypeState As StateType
	#tag EndComputedProperty


	#tag ViewBehavior
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
			Name="NonStopStateNumber"
			Group="Behavior"
			Type="Integer"
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
