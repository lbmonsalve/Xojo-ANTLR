#tag Class
Protected Class LL1Analyzer
	#tag Method, Flags = &h0
		Sub Constructor(atn As ATNBase)
		  Self.atn= atn
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDecisionLookahead() As ANTLR4Runtime.Misc.IntervalSet()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Look(s As ATNState, stopState As ATNState, ctx As RuleContext) As ANTLR4Runtime.Misc.IntervalSet
		  Dim r As ANTLR4Runtime.Misc.IntervalSet
		  Dim seeThruPreds As Boolean= True
		  
		  Dim lookContext As ANTLR4Runtime.Atn.PredictionContext
		  If Not(ctx Is Nil) Then
		    Break // TODO:
		    'lookContext= ANTLR4Runtime.Atn.PredictionContext.fromRuleContext(s.atn, ctx)
		  End If
		  
		  Look_(s, stopState, lookContext, r, New Dictionary, New Dictionary, seeThruPreds, True)
		  
		  Return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Look(s As ATNState, ctx As RuleContext) As ANTLR4Runtime.Misc.IntervalSet
		  Return Look(s, Nil, ctx)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Look_(s As ATNState, stopState As ATNState, ctx As ANTLR4Runtime.Atn.PredictionContext, r As ANTLR4Runtime.Misc.IntervalSet, lookBusy As Dictionary, calledRuleStack As Dictionary, seeThruPreds As Boolean, addEOF As Boolean)
		  Break // TODO:
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		atn As ATNBase
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Token.INVALID_TYPE
			End Get
		#tag EndGetter
		Shared HIT_PRED As Integer
	#tag EndComputedProperty


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
