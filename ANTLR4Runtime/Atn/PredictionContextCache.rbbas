#tag Class
Protected Class PredictionContextCache
	#tag Method, Flags = &h0
		Function Add(ctx As PredictionContext) As PredictionContext
		  Break // TODO: emptyPrediccionContext
		  
		  Dim existing As PredictionContext= Cache.Value(ctx)
		  If Not(existing Is Nil) Then Return existing
		  
		  Cache.Value(ctx)= ctx
		  
		  Return ctx
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get(ctx As PredictionContext) As PredictionContext
		  Return Cache.Lookup(ctx, Nil)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  If mCache Is Nil Then mCache= New Dictionary
			  
			  Return mCache
			End Get
		#tag EndGetter
		Protected Cache As Dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Cache.Count
			End Get
		#tag EndGetter
		Count As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mCache As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="Integer"
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
