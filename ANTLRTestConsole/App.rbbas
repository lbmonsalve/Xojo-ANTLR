#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  // for use in command line like: app < input > output
		  // click Project/Run paused
		  
		  Dim stream2 As ANTLR4Runtime.ICharStream= ANTLR4Runtime.CharStreams.FromStream(StdIn)
		  StdOut.Write stream2.GetText(New ANTLR4Runtime.Misc.Interval(0, stream2.Size))
		  
		  
		  'Dim stream1 As New ANTLR4Runtime.AntlrInputStream(StdIn)
		  'StdOut.Write stream1.ToString
		End Function
	#tag EndEvent


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
