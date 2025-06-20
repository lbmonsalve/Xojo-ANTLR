#tag Class
Protected Class AntlrFileStream
Inherits AntlrInputStream
	#tag Method, Flags = &h1000
		Sub Constructor(file As FolderItem)
		  Load file, Encodings.UTF8
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(file As FolderItem, fileEnc As TextEncoding)
		  Load file, fileEnc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(fileName As String)
		  Constructor fileName, Encodings.UTF8
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(fileName As String, fileEnc As TextEncoding)
		  If fileName.Len= 0 Then Return
		  
		  Load New FolderItem(fileName), fileEnc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load(file As FolderItem, fileEnc As TextEncoding)
		  If file Is Nil Then Return
		  If Not file.Exists Then Return
		  
		  Dim text As String= file.ReadAllText(fileEnc)
		  
		  data= text.ToCharArray
		  dataEnc= fileEnc
		  n= text.Len
		  
		  FileName= file.AbsoluteNativePathAntlr
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		#tag Note
			/// <summary>What is name or source of this char stream?</summary>
		#tag EndNote
		Attributes( Hidden ) Private FileName As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return FileName
			End Get
		#tag EndGetter
		SourceName As String
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
			Name="SourceName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
