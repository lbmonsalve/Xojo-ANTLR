#tag Class
Protected Class Transition
	#tag Method, Flags = &h0
		Sub Constructor(target As ATNState)
		  Assert Not (target Is Nil)
		  
		  Self.Target= target
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Label() As ANTLR4Runtime.Misc.IntervalSet
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Matches(symbol As Integer, minVocabSymbol As Integer, maxVocabSymbol As Integer) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function SerializationNames() As String()
		  Static names() As String
		  If names.LastIndexAntlr= -1 Then
		    names= Array("INVALID", "EPSILON", "RANGE", "RULE", "PREDICATE", _
		    "ATOM", "ACTION", "SET", "NOT_SET", "WILDCARD", "PRECEDENCE")
		  End If
		  
		  Return names
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return False
			End Get
		#tag EndGetter
		IsEpsilon As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Target As ATNState
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		TypeTransition As TransitionType
	#tag EndComputedProperty


	#tag Constant, Name = ACTION, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ATOM, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = EPSILON, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NOT_SET, Type = Double, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PRECEDENCE, Type = Double, Dynamic = False, Default = \"10", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PREDICATE, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = RANGE, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = RULE, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SET, Type = Double, Dynamic = False, Default = \"7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WILDCARD, Type = Double, Dynamic = False, Default = \"9", Scope = Public
	#tag EndConstant


	#tag Enum, Name = TransitionType, Type = Integer, Flags = &h0
		INVALID
		  EPSILON
		  RANGE
		  RULE
		  PREDICATE
		  ATOM
		  ACTION
		  SET
		  NOT_SET
		  WILDCARD
		PRECEDENCE
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsEpsilon"
			Group="Behavior"
			Type="Boolean"
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
