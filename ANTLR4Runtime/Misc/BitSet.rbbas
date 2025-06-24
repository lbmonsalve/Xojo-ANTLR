#tag Class
Protected Class BitSet
	#tag Method, Flags = &h0
		Sub And_(set As BitSet)
		  If set Is Nil Then Raise GetException("ArgumentNullException: set")
		  
		  Dim length As Integer= Min(mData.Size, set.mData.Size)
		  For i As Integer= 0 To length- 1
		    mData.Byte(i)= mData.Byte(i) And set.mData.Byte(i)
		  Next
		  
		  For i As Integer= length To mData.Size- 1
		    mData.Byte(i)= 0
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Cardinality() As Integer
		  Dim bitCount As Integer
		  
		  for i As Integer= 1 To maxBits
		    If Get(i) Then bitCount= bitcount+ 1
		  next
		  
		  Return bitCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear(index As Integer)
		  If index<= 0 Then Raise GetException("ArgumentOutOfRangeException: index")
		  
		  Dim element As Integer= index/ BitsPerElement
		  If element> mData.Size Then Return // chk
		  If (index Mod BitsPerElement)= 0 Then element= element- 1
		  
		  mData.Byte(element)= mData.Byte(element) And Not(Bitwise.ShiftLeft(1, index Mod BitsPerElement))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Clone() As BitSet
		  Dim ret As New BitSet
		  
		  ret.mDataBS.Write mDataBS.Read(mDataBS.Length)
		  ret.maxBits= maxBits
		  
		  Return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mData= New MemoryBlock(1)
		  mData.LittleEndian= True
		  
		  mDataBS= New BinaryStream(mData)
		  mDataBS.LittleEndian= True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(nbits As Integer)
		  If nbits<= 0 Then Raise GetException("ArgumentOutOfRangeException: nbits")
		  
		  Dim length As Integer= (nbits+ BitsPerElement- 1)/ BitsPerElement
		  
		  mData= New MemoryBlock(length)
		  mData.LittleEndian= True
		  
		  mDataBS= New BinaryStream(mData)
		  mDataBS.LittleEndian= True
		  
		  maxBits= nbits
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(other As BitSet) As Boolean
		  If other Is Nil Then Return False
		  If IsEmpty Then
		    If other.IsEmpty Then Return True
		  End If
		  
		  Dim minLength As Integer= Min(mDataBS.Length, other.mDataBS.Length)
		  For i As Integer= 0 To minLength- 1
		    If mData.Byte(i)<> other.mData.Byte(i) Then Return False
		  Next
		  
		  For i As Integer= minLength To mDataBS.Length- 1
		    If mData.Byte(i)<> 0 Then Return False
		  Next
		  
		  For i As Integer= minLength To other.mDataBS.Length- 1
		    If other.mData.Byte(i)<> 0 Then Return False
		  Next
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get(index As Integer) As Boolean
		  If index<= 0 Then Raise GetException("ArgumentOutOfRangeException: index")
		  If index> maxBits Then Return False
		  
		  Dim element As Integer= index/ BitsPerElement
		  If element> mData.Size Then Return False // chk
		  If (index Mod BitsPerElement)= 0 Then element= element- 1
		  
		  Return (mData.Byte(element) And Bitwise.ShiftLeft(1, index Mod BitsPerElement))<> 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetException(msg As String, Optional errorNumber As Integer) As RuntimeException
		  Dim ret As New RuntimeException
		  ret.Message= msg
		  ret.ErrorNumber= errorNumber
		  
		  Return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsEmpty() As Boolean
		  For i As Integer= 0 To mData.Size- 1
		    If mData.Byte(i)<> 0 Then Return False
		  Next
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(rhs As BitSet) As Integer
		  If Equals(rhs) Then Return 0
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Subscript(index As Integer) As Boolean
		  Return Get(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Or_(set As BitSet)
		  If set Is Nil Then Raise GetException("ArgumentNullException: set")
		  
		  If set.mData.Size> mData.Size Then mDataBS.Length= set.mData.Size
		  
		  Dim length As Integer= set.mData.Size- 1
		  For i As Integer= 0 To length
		    mData.Byte(i)= mData.Byte(i) Or set.mData.Byte(i)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Set(index As Integer)
		  If index<= 0 Then Raise GetException("ArgumentOutOfRangeException: index")
		  
		  Dim element As Integer= index/ BitsPerElement
		  If element>= mData.Size Then mDataBS.Length= element+ 1 // resize
		  If (index Mod BitsPerElement)= 0 Then element= element- 1
		  
		  mData.Byte(element)= mData.Byte(element) Or Bitwise.ShiftLeft(1, index Mod BitsPerElement)
		  
		  If index> maxBits Then maxBits= index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Dim buf As New StringBuilder
		  
		  buf.Append "{"
		  
		  For i As Integer= 1 To maxBits
		    If i> 1 Then buf.Append(", ")
		    buf.Append Get(i)
		  Next
		  
		  buf.Append "}"
		  
		  Return buf.ToString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private maxBits As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mData As MemoryBlock
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDataBS As BinaryStream
	#tag EndProperty


	#tag Constant, Name = BitsPerElement, Type = Double, Dynamic = False, Default = \"8", Scope = Public
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
