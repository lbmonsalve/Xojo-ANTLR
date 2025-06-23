#tag Class
Protected Class MiscTests
Inherits TestGroup
	#tag Method, Flags = &h0
		Sub BitSetTest()
		  Dim bset1 As New ANTLR4Runtime.Misc.BitSet(12)
		  Assert.IsTrue bset1.IsEmpty, "IsTrue bset1.IsEmpty"
		  
		  bset1.Set 12
		  Assert.IsTrue bset1.Get(12), "IsTrue bset1.Get(12)"
		  Assert.IsFalse bset1.Get(11), "IsFalse bset1.Get(11)"
		  
		  bset1.Set 13 // resize
		  Assert.IsTrue bset1.Get(13), "IsTrue bset1.Get(13)"
		  Assert.IsTrue bset1(13), "IsTrue bset1(13)"
		  Assert.IsFalse bset1(23), "IsFalse bset1(23)"
		  
		  bset1.Set 8
		  Assert.IsTrue bset1(8), "IsTrue bset1(8)"
		  bset1.Clear 8
		  Assert.IsFalse bset1(8), "IsFalse bset1(8)"
		  
		  
		  Dim bset2 As ANTLR4Runtime.Misc.BitSet= bset1.Clone
		  Assert.IsTrue bset2(13), "IsTrue bset2(13)"
		  
		  
		  bset1= New ANTLR4Runtime.Misc.BitSet(2)
		  bset1.Set 2
		  Assert.AreSame "{false, true}", bset1.ToString, "AreSame ""{false, true}"", bset1.ToString"
		  'Break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IntervalSetTest()
		  Dim iset1 As New ANTLR4Runtime.Misc.IntervalSet(1)
		  Assert.AreEqual 1, iset1.Count, "AreEqual 1, iset1.Count"
		  
		  iset1.Add 2
		  Assert.AreEqual 2, iset1.Count, "AreEqual 2, iset1.Count"
		  
		  iset1.Add 3, 5
		  Assert.AreEqual 5, iset1.Count, "AreEqual 5, iset1.Count"
		  
		  iset1.Add New ANTLR4Runtime.Misc.Interval(6, 10)
		  Assert.AreEqual 10, iset1.Count, "AreEqual 10, iset1.Count"
		  
		  iset1.Add 50, 52
		  Assert.AreEqual 13, iset1.Count, "AreEqual 13, iset1.Count"
		  
		  iset1.Add 20, 30
		  Assert.AreEqual 24, iset1.Count, "AreEqual 24, iset1.Count"
		  
		  
		  Dim iset2 As New ANTLR4Runtime.Misc.IntervalSet(15, 16)
		  Call iset1.AddAll(iset2)
		  Assert.AreEqual 26, iset1.Count, "AreEqual 26, iset1.Count"
		  
		  
		  Assert.IsTrue iset1.Contains(21), "IsTrue iset1.Contains(21)"
		  Assert.IsFalse iset1.Contains(14), "IsFalse iset1.Contains(14)"
		  
		  
		  Assert.IsTrue iset1.Equals(iset1), "IsTrue iset1.Equals(iset1)"
		  Assert.IsFalse iset1.Equals(iset2), "IsFalse iset1.Equals(iset2)"
		  
		  // recreate iset1 on iset3:
		  Dim iset3 As New ANTLR4Runtime.Misc.IntervalSet(1)
		  iset3.Add 2
		  iset3.Add 3, 5
		  iset3.Add New ANTLR4Runtime.Misc.Interval(6, 10)
		  iset3.Add 50, 52
		  iset3.Add 20, 30
		  Call iset3.AddAll(iset2)
		  Assert.IsTrue iset1.Equals(iset3), "IsTrue iset1.Equals(iset3)"
		  
		  iset3.Remove 2
		  Assert.IsFalse iset1.Equals(iset3), "IsFalse iset1.Equals(iset3)"
		  
		  iset3.Remove 1
		  Assert.IsFalse iset3.Contains(1), "IsFalse iset3.Contains(1)"
		  
		  iset3.Remove 4
		  Assert.IsFalse iset3.Contains(4), "IsFalse iset3.Contains(4)"
		  
		  
		  iset3= ANTLR4Runtime.Misc.IntervalSet(iset1.Substract(iset2))
		  Assert.IsFalse iset3.Contains(iset2.MinElement), "IsFalse iset3.Contains(iset2.MinElement)"
		  Assert.IsFalse iset3.Contains(iset2.MaxElement), "IsFalse iset3.Contains(iset2.MaxElement)"
		  
		  
		  iset3= ANTLR4Runtime.Misc.IntervalSet(iset2.Complement(iset1))
		  Assert.IsFalse iset3.Contains(iset2.MinElement), "IsFalse iset3.Contains(iset2.MinElement)"
		  Assert.IsFalse iset3.Contains(iset2.MaxElement), "IsFalse iset3.Contains(iset2.MaxElement)"
		  
		  
		  Dim iset4 As ANTLR4Runtime.Misc.IIntSet= iset1.And_(iset2)
		  Assert.IsTrue iset4.Contains(15), "IsTrue iset4.Contains(15)"
		  Assert.IsTrue iset4.Contains(16), "IsTrue iset4.Contains(16)"
		  
		  iset4= iset1.And_(iset3)
		  Assert.IsTrue iset4.Contains(52), "IsTrue iset4.Contains(52)"
		  
		  
		  iset4= iset2.Or_(iset1)
		  Assert.IsTrue iset4.Contains(15), "IsTrue iset4.Contains(15)"
		  
		  
		  Dim expected As String= "{1..2, 3..5, 6..10, 15..16, 20..30, 50..52}"
		  Assert.AreSame expected, iset4.ToString, "AreSame expected, iset4.ToString"
		  
		  
		  Dim values() As Integer= iset4.ToList
		  Assert.AreEqual 26, values.CountAntlr, "AreEqual 26, values.CountAntlr"
		  
		  
		  iset1.Clear
		  Assert.AreEqual 0, iset1.Count, "AreEqual 0, iset1.Count"
		  Assert.IsTrue iset1.IsNil, "IsTrue iset1.IsNil"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IntervalTest()
		  Dim inte1 As New ANTLR4Runtime.Misc.interval(1, 2)
		  Assert.AreEqual 1, inte1.A, "AreEqual 1, inte1.A"
		  Assert.AreEqual 2, inte1.B, "AreEqual 2, inte1.B"
		  Assert.AreEqual 2, inte1.Length, "AreEqual 2, inte1.Length"
		  Assert.AreEqual "1..2", inte1.ToString, "AreEqual ""1..2"", inte1.ToString"
		  
		  
		  inte1= ANTLR4Runtime.Misc.Interval.Invalid
		  Assert.Message "ANTLR4Runtime.Misc.Interval.Invalid:"
		  Assert.AreEqual -1, inte1.A, "AreEqual -1, inte1.A"
		  Assert.AreEqual -2, inte1.B, "AreEqual -2, inte1.B"
		  Assert.AreEqual 0, inte1.Length, "AreEqual 0, inte1.Length"
		  Assert.AreEqual "-1..-2", inte1.ToString, "AreEqual ""-1..-2"", inte1.ToString"
		  
		  
		  inte1= ANTLR4Runtime.Misc.Interval.Of_(0, 10)
		  Assert.Message "ANTLR4Runtime.Misc.Interval.Of_(0, 10):"
		  Assert.AreEqual 0, inte1.A, "AreEqual 0, inte1.A"
		  Assert.AreEqual 10, inte1.B, "AreEqual 10, inte1.B"
		  Assert.AreEqual 11, inte1.Length, "AreEqual 11, inte1.Length"
		  Assert.AreEqual "0..10", inte1.ToString, "AreEqual ""0..10"", inte1.ToString"
		  
		  
		  inte1= ANTLR4Runtime.Misc.Interval.Of_(9, 10)
		  Assert.AreEqual 2, inte1.Length, "AreEqual 2, inte1.Length"
		  
		  
		  Dim inte2 As New ANTLR4Runtime.Misc.interval(9, 10)
		  Assert.IsTrue inte1= inte2, "IsTrue inte1= inte2"
		  
		  inte2= New ANTLR4Runtime.Misc.interval(8, 10)
		  Assert.IsFalse inte1= inte2, "IsFalse inte1= inte2"
		  
		  inte2= New ANTLR4Runtime.Misc.interval(9, 11)
		  Assert.IsFalse inte1= inte2, "IsFalse inte1= inte2"
		  
		  
		  inte1= New ANTLR4Runtime.Misc.Interval(3, 4)
		  inte2= New ANTLR4Runtime.Misc.Interval(2, 9)
		  Dim inte3 As ANTLR4Runtime.Misc.Interval= inte1.Union(inte2)
		  Assert.Message "union:"
		  Assert.AreEqual 2, inte3.A, "AreEqual 2, inte3.A"
		  Assert.AreEqual 9, inte3.B, "AreEqual 9, inte3.B"
		  
		  inte3= inte1.Intersection(inte2)
		  Assert.Message "intersection:"
		  Assert.AreEqual 3, inte3.A, "AreEqual 3, inte3.A"
		  Assert.AreEqual 4, inte3.B, "AreEqual 4, inte3.B"
		  
		  
		  inte1= New ANTLR4Runtime.Misc.Interval(0, 41)
		  inte2= New ANTLR4Runtime.Misc.Interval(42, 42)
		  Assert.IsTrue inte1.Adjacent(inte2), "IsTrue inte1.Adjacent(inte2)"
		  
		  inte1= New ANTLR4Runtime.Misc.Interval(0, 40)
		  Assert.IsFalse inte1.Adjacent(inte2), "IsFalse inte1.Adjacent(inte2)"
		  
		  
		  inte1= New ANTLR4Runtime.Misc.Interval(3, 4)
		  inte2= New ANTLR4Runtime.Misc.Interval(2, 9)
		  Assert.IsTrue inte2.ProperlyContains(inte1), "IsTrue inte2.ProperlyContains(inte1)"
		  Assert.IsFalse inte1.ProperlyContains(inte2), "IsFalse inte1.ProperlyContains(inte2)"
		  Assert.IsTrue inte1.StartsAfter(inte2), "IsTrue inte1.StartsAfter(inte2)"
		  Assert.IsFalse inte2.StartsAfter(inte1), "IsFalse inte2.StartsAfter(inte1)"
		  
		  inte3= New ANTLR4Runtime.Misc.Interval(0, 1)
		  Assert.IsTrue inte1.StartsAfterDisjoint(inte3), "IsTrue inte1.StartsAfterDisjoint(inte3)"
		  Assert.IsFalse inte1.StartsAfterDisjoint(inte2), "IsFalse inte1.StartsAfterDisjoint(inte2)"
		  
		  Assert.IsTrue inte1.StartsAfterNonDisjoint(inte2), "IsTrue inte1.StartsAfterNonDisjoint(inte2)"
		  Assert.IsFalse inte1.StartsAfterNonDisjoint(inte3), "IsFalse inte1.StartsAfterNonDisjoint(inte3)"
		  
		  Assert.IsTrue inte3.StartsBeforeDisjoint(inte1), "IsTrue inte3.StartsBeforeDisjoint(inte1)"
		  Assert.IsFalse inte1.StartsBeforeDisjoint(inte3), "IsFalse inte1.StartsBeforeDisjoint(inte3)"
		  
		  Assert.IsTrue inte2.StartsBeforeNonDisjoint(inte1), "IsTrue inte2.StartsBeforeNonDisjoint(inte1)"
		  Assert.IsFalse inte3.StartsBeforeNonDisjoint(inte1), "IsFalse inte3.StartsBeforeNonDisjoint(inte1)"
		  
		  Assert.IsTrue inte3.Disjoint(inte1), "IsTrue inte3.Disjoint(inte1)"
		  Assert.IsTrue inte3.Disjoint(inte2), "IsTrue inte3.Disjoint(inte2)"
		  Assert.IsFalse inte1.Disjoint(inte2), "IsFalse inte1.Disjoint(inte2)"
		  Assert.IsFalse inte2.Disjoint(inte1), "IsFalse inte2.Disjoint(inte1)"
		  
		  
		  inte3= inte2.DifferenceNotProperlyContained(inte1)
		  Assert.AreEqual "2..2", inte3.ToString, "AreEqual ""2..2"", inte3.ToString"
		  
		  inte3= inte1.DifferenceNotProperlyContained(inte2)
		  Assert.AreEqual "10..4", inte3.ToString, "AreEqual ""10..4"", inte3.ToString"
		  
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
