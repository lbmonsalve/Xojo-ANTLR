#tag Class
Protected Class AntlrInputStream
Inherits BaseInputCharStream
	#tag Method, Flags = &h1000
		Sub Constructor(input As Readable)
		  Constructor input, INITIAL_BUFFER_SIZE, READ_BUFFER_SIZE
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(input As Readable, initialSize As Integer)
		  Constructor input, initialSize, READ_BUFFER_SIZE
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(input As Readable, initialSize As Integer, readChunkSize As Integer, Optional inputEnc As TextEncoding)
		  If inputEnc Is Nil Then
		    If input IsA TextInputStream Then
		      inputEnc= TextInputStream(input).Encoding
		    Else
		      inputEnc= Encodings.UTF8
		    End If
		  End If
		  
		  Load input, initialSize, readChunkSize, inputEnc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(input As String)
		  data= input.ToCharArray
		  dataEnc= input.Encoding
		  n= input.Len
		  
		  /// <summary>Copy data in string to a local char array</summary>
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(data() As UInt16, numberOfActualCharsInArray As Integer, dataEnc As TextEncoding)
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

	#tag Method, Flags = &h0
		Sub Load(input As Readable, initialSize As Integer, readChunkSize As Integer, inputEnc As TextEncoding)
		  If input Is Nil Then Return
		  If initialSize<= 0 Then initialSize= INITIAL_BUFFER_SIZE
		  If readChunkSize<= 0 Then readChunkSize= READ_BUFFER_SIZE
		  
		  Reset
		  data.ResizeToantlr 0
		  dataEnc= inputEnc
		  Dim buffer As String
		  Dim endOfFile As Boolean
		  
		  Do
		    buffer= input.Read(readChunkSize, inputEnc)
		    
		    For i As Integer= 1 To buffer.Len
		      data.Append buffer.Mid(i, 1).Asc
		    Next
		    
		    n= n+ buffer.Len
		    
		    #if RBVersion< 2019.2
		      endOfFile= input.EOF
		    #else
		      endOfFile= input.EndOfFile
		    #endif
		    
		  Loop Until endOfFile Or buffer.Len= 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ValueAt(i As Integer) As Integer
		  Return data(i)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		data() As UInt16
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
