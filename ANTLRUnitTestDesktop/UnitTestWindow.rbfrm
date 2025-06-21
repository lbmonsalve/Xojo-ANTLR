#tag Window
Begin Window UnitTestWindow
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   600
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   97988607
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "ANTLR UnitTest"
   Visible         =   True
   Width           =   800
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   ""
      Enabled         =   True
      Height          =   600
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "UnitTest\rTest"
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      Value           =   1
      Visible         =   True
      Width           =   800
      Begin UnitTestPanel UnitTestPanel1
         AcceptFocus     =   ""
         AcceptTabs      =   True
         AutoDeactivate  =   True
         BackColor       =   &hFFFFFF
         Backdrop        =   ""
         Enabled         =   True
         EraseBackground =   True
         HasBackColor    =   False
         Height          =   550
         HelpTag         =   ""
         InitialParent   =   "TabPanel1"
         Left            =   15
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   38
         UseFocusRing    =   ""
         Visible         =   True
         Width           =   770
      End
      Begin PushButton PushButton1
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Test"
         Default         =   ""
         Enabled         =   True
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   20
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16
         TextUnit        =   0
         Top             =   54
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Resized()
		  #if RBVersion< 2014
		    UnitTestPanel1.Refresh
		  #endif
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditClearAll() As Boolean Handles EditClearAll.Action
			UnitTestPanel1.SelectAllGroups(False, False)
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditSelectAll() As Boolean Handles EditSelectAll.Action
			UnitTestPanel1.SelectAllGroups(True, False)
			
			Return True
			
		End Function
	#tag EndMenuHandler


#tag EndWindowCode

#tag Events PushButton1
	#tag Event
		Sub Action()
		  Dim trsn As New ANTLR4Runtime.Atn.Transition(New ANTLR4Runtime.Atn.ATNState)
		  Dim names() As String= ANTLR4Runtime.Atn.Transition.SerializationNames
		  Dim lbl As ANTLR4Runtime.Misc.IntervalSet= trsn.Label
		  
		  'Dim state As New ANTLR4Runtime.Atn.ATNState
		  'Dim names() As String= ANTLR4Runtime.Atn.ATNState.SerializationNames
		  '
		  Break
		  
		  
		  'Dim stream1 As ANTLR4Runtime.ICharStream
		  'stream1= ANTLR4Runtime.CharStreams.FromStream(New BinaryStream("hello world! Σ©"))
		  'Dim sourceName As String= stream1.GetSourceName
		  '
		  'Break
		  
		  
		  'Dim file As FolderItem= SpecialFolder.Documents.Child("dragonbookout.txt")
		  'Dim path As String= file.AbsoluteNativePathAntlr
		  'Dim fileStream As ANTLR4Runtime.ICharStream= ANTLR4Runtime.CharStreams.FromPath(path)
		  '
		  'Break
		  
		  
		  'Dim file As FolderItem= SpecialFolder.Documents.Child("dragonbookout.txt")
		  'Dim path As String= file.AbsoluteNativePathAntlr
		  'Dim fileStream As New ANTLR4Runtime.AntlrFileStream(path)
		  'Dim src As String= fileStream.ToString
		  '
		  'fileStream= New ANTLR4Runtime.AntlrFileStream(file)
		  'src= fileStream.ToString
		  '
		  'Break
		  
		  
		  'Dim str1 As String= "hello "+ Encodings.UTF8.Chr(&h1F615)+ "!"
		  'Dim stream As New ANTLR4Runtime.CodePointCharStream(str1)
		  '
		  'Break
		  
		  
		  'Dim stream1 As ANTLR4Runtime.ICharStream
		  '
		  'Dim g4Type as New FileType
		  'g4Type.Name = "grammar/text"
		  'g4Type.MacType = "TEXT"
		  'g4Type.Extensions = "g4;txt"
		  '
		  'Dim file As FolderItem= GetOpenFolderItem(g4Type)
		  'If Not (file Is Nil) Then
		  'Dim txtFile As TextInputStream= TextInputStream.Open(file)
		  'Dim stream As New ANTLR4Runtime.AntlrInputStream(txtFile)
		  'Dim txt As String= stream.GetText(New ANTLR4Runtime.Misc.Interval(0, stream.Size))
		  'stream.SourceName= file.Name
		  'stream1= stream
		  'End If
		  '
		  'Break
		  
		  
		  'Dim stream1 As ANTLR4Runtime.ICharStream
		  'stream1= New ANTLR4Runtime.AntlrInputStream("hello world! Σ©")
		  'stream1.Consume
		  'stream1= New ANTLR4Runtime.AntlrInputStream(New BinaryStream("hello world! Σ©"))
		  '
		  'Break
		  
		  
		  'Dim inte As New ANTLR4Runtime.Misc.Interval(1, 2)
		  'inte= ANTLR4Runtime.Misc.Interval.Of_(3, 4)
		  '
		  'Dim invalid As ANTLR4Runtime.Misc.Interval= ANTLR4Runtime.Misc.Interval.Invalid
		  '
		  'inte= New ANTLR4Runtime.Misc.Interval(9, 10)
		  'Dim length As Integer= inte.Length
		  '
		  'Dim other As New ANTLR4Runtime.Misc.Interval(9, 10)
		  'If inte= other Then
		  'Dim h1 As Integer= inte.HashCode
		  'Dim h2 As Integer= other.HashCode
		  '//Break
		  'End If
		  '
		  'Dim inte1 As New ANTLR4Runtime.Misc.Interval(3, 4)
		  'Dim inte2 As New ANTLR4Runtime.Misc.Interval(2, 9)
		  'Dim union As ANTLR4Runtime.Misc.Interval= inte1.Union(inte2)
		  'Dim intersection As ANTLR4Runtime.Misc.Interval= inte1.Intersection(inte2)
		  '
		  'Dim inte3 As New ANTLR4Runtime.Misc.Interval(2, 9)
		  'Dim inte4 As New ANTLR4Runtime.Misc.Interval(8, 12)
		  'Dim dnpc As ANTLR4Runtime.Misc.Interval= inte3.DifferenceNotProperlyContained(inte4)
		  '
		  'Break
		End Sub
	#tag EndEvent
#tag EndEvents
