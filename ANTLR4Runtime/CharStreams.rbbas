#tag Class
Protected Class CharStreams
	#tag Method, Flags = &h0
		 Shared Function FromPath(path As String) As ICharStream
		  Return FromPath(path, Encodings.UTF8)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FromPath(path As String, fileEnc As TextEncoding) As ICharStream
		  Dim file As New FolderItem(path)
		  Dim content As String= file.ReadAllText(fileEnc)
		  Dim result As New CodePointCharStream(content)
		  result.SourceName= path
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FromStream(stream As Readable) As ICharStream
		  Return FromStream(stream, Encodings.UTF8)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FromStream(stream As Readable, streamEnc As TextEncoding) As ICharStream
		  Dim chunks() As String
		  Dim buffer As String
		  Dim endOfFile As Boolean
		  
		  Do
		    buffer= stream.Read(BaseInputCharStream.READ_BUFFER_SIZE, streamEnc)
		    If buffer.Len> 0 Then chunks.Append(buffer)
		    
		    #if RBVersion< 2019.2
		      endOfFile= stream.EOF
		    #else
		      endOfFile= stream.EndOfFile
		    #endif
		    
		  Loop Until endOfFile Or buffer.Len= 0
		  
		  Return FromString(DefineEncoding(Join(chunks, ""), streamEnc))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FromString(content As String) As ICharStream
		  Return New CodePointCharStream(content)
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
End Class
#tag EndClass
