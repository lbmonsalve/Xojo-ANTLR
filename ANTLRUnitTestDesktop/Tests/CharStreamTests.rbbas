#tag Class
Protected Class CharStreamTests
Inherits TestGroup
	#tag Method, Flags = &h0
		Sub CharStreamsTest()
		  Dim snnipet As String= "hello world! Σ©"
		  Dim stream As ANTLR4Runtime.ICharStream
		  
		  stream= ANTLR4Runtime.CharStreams.FromString(snnipet)
		  
		  Dim actual As String= stream.GetText(New ANTLR4Runtime.Misc.Interval(0, stream.Size))
		  Assert.AreEqual snnipet.Len, actual.Len, "AreEqual snnipet.Len, actual.Len"
		  Assert.AreEqual snnipet, actual, "AreEqual snnipet, actual"
		  
		  stream= ANTLR4Runtime.CharStreams.FromStream(New BinaryStream(snnipet))
		  
		  actual= stream.GetText(New ANTLR4Runtime.Misc.Interval(0, stream.Size))
		  Assert.AreEqual snnipet.Len, actual.Len, "AreEqual snnipet.Len, actual.Len"
		  Assert.AreEqual snnipet, actual, "AreEqual snnipet, actual"
		  
		  Dim file As FolderItem= FindFile("Expr.g4", "grammars")
		  Dim txtFile As TextInputStream= TextInputStream.Open(file)
		  
		  stream= ANTLR4Runtime.CharStreams.FromPath(file.AbsoluteNativePathAntlr)
		  
		  actual= stream.GetText(New ANTLR4Runtime.Misc.Interval(0, stream.Size))
		  Dim expect As String= txtFile.ReadAll(Encodings.UTF8)
		  Assert.AreEqual expect.Len, actual.Len, "AreEqual expect.Len, actual.Len"
		  Assert.AreEqual expect, actual, "AreEqual expect, actual"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CodePointTest()
		  Dim snnipet As String= "hello "+ Encodings.UTF8.Chr(&h1F615)+ "!"
		  
		  Dim stream As New ANTLR4Runtime.CodePointCharStream(snnipet)
		  Assert.AreEqual snnipet.Len, stream.Size, "AreEqual snnipet.Len, stream.Size"
		  Assert.AreEqual snnipet, stream.ToString, "AreEqual snnipet, stream.ToString"
		  
		  Dim copyStream As New ANTLR4Runtime.CodePointCharStream(stream.data, stream.Size, stream.dataEnc)
		  Assert.AreEqual snnipet.Len, copyStream.Size, "AreEqual snnipet.Len, copyStream.Size"
		  Assert.AreEqual snnipet, copyStream.ToString, "AreEqual snnipet, copyStream.ToString"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FileStreamTest()
		  Dim file As FolderItem= FindFile("Expr.g4", "grammars")
		  Dim txtFile As TextInputStream= TextInputStream.Open(file)
		  Dim stream As New ANTLR4Runtime.AntlrFileStream(file)
		  
		  Dim expect As String= txtFile.ReadAll(Encodings.UTF8)
		  Dim actual As String= stream.ToString
		  Assert.AreEqual expect.Len, stream.Size, "AreEqual snnipet.Len, stream.Size"
		  Assert.AreEqual expect, actual, "AreEqual expect, actual"
		  
		  stream= New ANTLR4Runtime.AntlrFileStream(file.AbsoluteNativePathAntlr)
		  
		  actual= stream.ToString
		  Assert.AreEqual expect.Len, stream.Size, "AreEqual snnipet.Len, stream.Size"
		  Assert.AreEqual expect, actual, "AreEqual expect, actual"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FindFile(name as string, folderName As String = "") As FolderItem
		  // Look for file in parent folders from executable on
		  
		  Dim parent As FolderItem = app.ExecutableFile.Parent
		  
		  While parent<>Nil
		    
		    Dim file As FolderItem
		    If folderName= "" Then
		      file = parent.Child(name)
		    Else
		      file = parent.Child(folderName).Child(name)
		    End If
		    
		    If file<>Nil And file.Exists Then
		      Return file
		    End If
		    
		    parent = parent.Parent
		  Wend
		  
		  Return Nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InputStreamTest()
		  Dim snnipet As String= "hello world! Σ©"
		  
		  Dim stream As New ANTLR4Runtime.AntlrInputStream(snnipet)
		  Assert.AreEqual snnipet.Len, stream.Size, "AreEqual snnipet.Len, stream.Size"
		  Assert.AreEqual snnipet, stream.ToString, "AreEqual snnipet, stream.ToString"
		  
		  stream= New ANTLR4Runtime.AntlrInputStream(New BinaryStream(snnipet))
		  Assert.AreEqual snnipet.Len, stream.Size, "AreEqual snnipet.Len, stream.Size"
		  Assert.AreEqual snnipet, stream.ToString, "AreEqual snnipet, stream.ToString"
		  
		  Dim copyStream As New ANTLR4Runtime.AntlrInputStream(stream.data, stream.Size, stream.dataEnc)
		  Assert.AreEqual snnipet.Len, copyStream.Size, "AreEqual snnipet.Len, copyStream.Size"
		  Assert.AreEqual snnipet, copyStream.ToString, "AreEqual snnipet, copyStream.ToString"
		  
		  
		  Dim file As FolderItem= FindFile("Expr.g4", "grammars")
		  
		  If Not (file Is Nil) Then
		    Dim txtFile As TextInputStream= TextInputStream.Open(file)
		    stream= New ANTLR4Runtime.AntlrInputStream(txtFile)
		    
		    txtFile= TextInputStream.Open(file)
		    
		    Dim expect As String= txtFile.ReadAll(Encodings.UTF8)
		    Dim actual As String= stream.ToString
		    Assert.AreEqual expect.Len, stream.Size, "AreEqual snnipet.Len, stream.Size"
		    Assert.AreEqual expect, actual, "AreEqual expect, actual"
		  End If
		  
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FailedTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludeGroup"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="TestGroup"
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
			Name="NotImplementedCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PassedTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SkippedTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StopTestOnFail"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
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
