#tag Class
Protected Class CodePointCharStream
Inherits BaseInputCharStream
	#tag Method, Flags = &h1000
		Sub Constructor(input As String)
		  data= input.ToUInt32Array
		  dataEnc= input.Encoding
		  n= input.Len
		  
		  /// <summary>Copy data in string to a local char array</summary>
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(data() As UInt32, numberOfActualCharsInArray As Integer, dataEnc As TextEncoding)
		  Self.data= data
		  Self.dataEnc= dataEnc
		  Self.n= numberOfActualCharsInArray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ConvertDataToString(start As Integer, count As Integer) As String
		  Dim ret() As String
		  
		  For i As Integer= start To start+ count- 1
		    ret.Append dataEnc.Chr(data(i))
		  Next
		  
		  Return DefineEncoding(Join(ret, ""), dataEnc)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ValueAt(i As Integer) As Integer
		  Return data(i)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		data() As UInt32
	#tag EndProperty

	#tag Property, Flags = &h0
		dataEnc As TextEncoding
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
