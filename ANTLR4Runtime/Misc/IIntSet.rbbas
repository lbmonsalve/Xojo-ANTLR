#tag Interface
Protected Interface IIntSet
	#tag Method, Flags = &h0
		Sub Add(el As Integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddAll(set As IIntSet) As IIntSet
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function And_(a As IIntSet) As IIntSet
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Complement(elems As IIntSet) As IIntSet
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contains(el As Integer) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(obj As IIntSet) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNil() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Or_(a As IIntSet) As IIntSet
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove(el As Integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SingleElement() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Substract(a As IIntSet) As IIntSet
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToList() As Integer()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  
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
