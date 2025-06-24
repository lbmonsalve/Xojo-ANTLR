#tag Class
Protected Class HashSet
Implements ISet
	#tag Method, Flags = &h0
		Function Add(el As Variant) As Boolean
		  If mData.HasKey(el) Then Return False
		  mData.Value(el)= el
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  mData.Clear
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mData= New Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contains(o As Variant) As Boolean
		  Return mData.HasKey(o)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(o As ISet) As Boolean
		  If o Is Nil Then Return False
		  If Not(o IsA HashSet) Then Return False
		  
		  Dim other As HashSet= HashSet(o)
		  If Size<> other.Size Then Return False
		  
		  For i As Integer= 0 To Size- 1
		    If Not(mData.Key(i).Equals(other.mData.Key(i))) Then Return False
		  Next
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsEmpty() As Boolean
		  Return mData.Count= 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(rhs As HashSet) As Integer
		  If Equals(rhs) Then Return 0
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Remove(el As Variant) As Boolean
		  If mData.HasKey(el) Then
		    mData.Remove el
		    Return True
		  End If
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Size() As Integer
		  Return mData.Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Dim buf As New StringBuilder
		  buf.Append mData.Keys
		  
		  Return buf.ToString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mData As Dictionary
	#tag EndProperty


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
