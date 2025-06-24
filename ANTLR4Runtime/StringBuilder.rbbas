#tag Class
Protected Class StringBuilder
	#tag Method, Flags = &h0
		Sub Append(value As Variant, addDelim As Boolean = False, escaping As Boolean = False)
		  Select Case mFormat
		  Case kTagJson
		    ImplAppendJson value, addDelim, escaping
		  Case kTagXml
		    ImplAppendXml value, addDelim, escaping
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendArray(arr() As Int16, addDelim As Boolean = False)
		  Dim n As Integer= arr.Ubound
		  
		  Select Case mFormat
		  Case kTagJson
		    If addDelim Then mBuffer.Write(kLk)
		    For i As Integer= 0 To arr.Ubound
		      Append arr(i)
		      If (i+ 1)<= n Then mBuffer.Write(kCm)
		    Next
		    If addDelim Then mBuffer.Write(kRk)
		  Case kTagXml
		    mBuffer.Write kLt+ kTagArray+ kGt
		    For i As Integer= 0 To arr.Ubound
		      mBuffer.Write kLt+ kTagEntry+ kGt
		      Append arr(i)
		      mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		    Next
		    mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		  End Select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendArray(arr() As Int32, addDelim As Boolean = False)
		  Dim n As Integer= arr.Ubound
		  
		  Select Case mFormat
		  Case kTagJson
		    If addDelim Then mBuffer.Write(kLk)
		    For i As Integer= 0 To arr.Ubound
		      Append arr(i)
		      If (i+ 1)<= n Then mBuffer.Write(kCm)
		    Next
		    If addDelim Then mBuffer.Write(kRk)
		  Case kTagXml
		    mBuffer.Write kLt+ kTagArray+ kGt
		    For i As Integer= 0 To arr.Ubound
		      mBuffer.Write kLt+ kTagEntry+ kGt
		      Append arr(i)
		      mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		    Next
		    mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendArray(arr() As Int64, addDelim As Boolean = False)
		  Dim n As Integer= arr.Ubound
		  
		  Select Case mFormat
		  Case kTagJson
		    If addDelim Then mBuffer.Write(kLk)
		    For i As Integer= 0 To arr.Ubound
		      Append arr(i)
		      If (i+ 1)<= n Then mBuffer.Write(kCm)
		    Next
		    If addDelim Then mBuffer.Write(kRk)
		  Case kTagXml
		    mBuffer.Write kLt+ kTagArray+ kGt
		    For i As Integer= 0 To arr.Ubound
		      mBuffer.Write kLt+ kTagEntry+ kGt
		      Append arr(i)
		      mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		    Next
		    mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendArray(arr() As Int8, addDelim As Boolean = False)
		  Dim n As Integer= arr.Ubound
		  
		  Select Case mFormat
		  Case kTagJson
		    If addDelim Then mBuffer.Write(kLk)
		    For i As Integer= 0 To arr.Ubound
		      Append arr(i)
		      If (i+ 1)<= n Then mBuffer.Write(kCm)
		    Next
		    If addDelim Then mBuffer.Write(kRk)
		  Case kTagXml
		    mBuffer.Write kLt+ kTagArray+ kGt
		    For i As Integer= 0 To arr.Ubound
		      mBuffer.Write kLt+ kTagEntry+ kGt
		      Append arr(i)
		      mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		    Next
		    mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendArray(arr() As Object, addDelim As Boolean = False)
		  Dim n As Integer= arr.Ubound
		  
		  Select Case mFormat
		  Case kTagJson
		    If addDelim Then mBuffer.Write(kLk)
		    For i As Integer= 0 To arr.Ubound
		      Append arr(i)
		      If (i+ 1)<= n Then mBuffer.Write(kCm)
		    Next
		    If addDelim Then mBuffer.Write(kRk)
		  Case kTagXml
		    mBuffer.Write kLt+ kTagArray+ kGt
		    For i As Integer= 0 To arr.Ubound
		      If arr(i) IsA Date Then
		        mBuffer.Write kLt+ kTagEntry+ kGt
		        Append arr(i)
		        mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		      Else
		        Append arr(i)
		      End If
		    Next
		    mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendArray(arr() As UInt16, addDelim As Boolean = False)
		  Dim n As Integer= arr.Ubound
		  
		  Select Case mFormat
		  Case kTagJson
		    If addDelim Then mBuffer.Write(kLk)
		    For i As Integer= 0 To arr.Ubound
		      Append arr(i)
		      If (i+ 1)<= n Then mBuffer.Write(kCm)
		    Next
		    If addDelim Then mBuffer.Write(kRk)
		  Case kTagXml
		    mBuffer.Write kLt+ kTagArray+ kGt
		    For i As Integer= 0 To arr.Ubound
		      mBuffer.Write kLt+ kTagEntry+ kGt
		      Append arr(i)
		      mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		    Next
		    mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendArray(arr() As UInt32, addDelim As Boolean = False)
		  Dim n As Integer= arr.Ubound
		  
		  Select Case mFormat
		  Case kTagJson
		    If addDelim Then mBuffer.Write(kLk)
		    For i As Integer= 0 To arr.Ubound
		      Append arr(i)
		      If (i+ 1)<= n Then mBuffer.Write(kCm)
		    Next
		    If addDelim Then mBuffer.Write(kRk)
		  Case kTagXml
		    mBuffer.Write kLt+ kTagArray+ kGt
		    For i As Integer= 0 To arr.Ubound
		      mBuffer.Write kLt+ kTagEntry+ kGt
		      Append arr(i)
		      mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		    Next
		    mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendArray(arr() As UInt64, addDelim As Boolean = False)
		  Dim n As Integer= arr.Ubound
		  
		  Select Case mFormat
		  Case kTagJson
		    If addDelim Then mBuffer.Write(kLk)
		    For i As Integer= 0 To arr.Ubound
		      Append arr(i)
		      If (i+ 1)<= n Then mBuffer.Write(kCm)
		    Next
		    If addDelim Then mBuffer.Write(kRk)
		  Case kTagXml
		    mBuffer.Write kLt+ kTagArray+ kGt
		    For i As Integer= 0 To arr.Ubound
		      mBuffer.Write kLt+ kTagEntry+ kGt
		      Append arr(i)
		      mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		    Next
		    mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendArray(arr() As UInt8, addDelim As Boolean = False)
		  Dim n As Integer= arr.Ubound
		  
		  Select Case mFormat
		  Case kTagJson
		    If addDelim Then mBuffer.Write(kLk)
		    For i As Integer= 0 To arr.Ubound
		      Append arr(i)
		      If (i+ 1)<= n Then mBuffer.Write(kCm)
		    Next
		    If addDelim Then mBuffer.Write(kRk)
		  Case kTagXml
		    mBuffer.Write kLt+ kTagArray+ kGt
		    For i As Integer= 0 To arr.Ubound
		      mBuffer.Write kLt+ kTagEntry+ kGt
		      Append arr(i)
		      mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		    Next
		    mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendFrmt(frmt As String, ParamArray args As Variant)
		  Append Formatter(frmt, args)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  mBuffer= New BinaryStream(New MemoryBlock(0))
		  mBuffer.LittleEndian= True
		  mTrackedObjs= New Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(ParamArray params As Pair)
		  Clear
		  
		  For i As Integer= 0 To params.Ubound
		    If params(i).Left.StringValue.Lowercase= "format" And params(i).Right.Type= 8 Then // string
		      mFormat= params(i).Right.StringValue
		    ElseIf params(i).Left.StringValue.Lowercase= "addspecialtags" And params(i).Right.Type= 11 Then
		      mAddSpecialTags= params(i).Right.BooleanValue
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(format As String)
		  Clear
		  
		  mFormat= format.Lowercase
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub DoLoad(obj As Object, node As JSONItem)
		  If obj Is Nil Then Return
		  If node Is Nil Then Return
		  
		  Dim ti As Introspection.TypeInfo= Introspection.GetType(obj)
		  Dim props() As Introspection.PropertyInfo= ti.GetProperties
		  For Each prop As Introspection.PropertyInfo In props
		    If prop.IsPublic And prop.CanWrite And node.HasName(prop.Name) Then
		      If prop.PropertyType.IsArray And Not (node.Value(prop.Name) Is Nil) And _
		        node.Value(prop.Name) IsA JSONItem Then
		        Dim propNode As JSONItem= node.Value(prop.Name)
		        If propNode.IsArray Then
		          Dim propTypeName As String= prop.PropertyType.Name.Replace("()", "").Lowercase
		          Select Case propTypeName
		          Case kTypeBoolean
		            Dim objChildren() As Boolean
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Boolean= propNode.Value(i).BooleanValue
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeColor
		            Dim objChildren() As Color
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Color= GetColor(propNode.Value(i).StringValue)
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeCurrency
		            Dim objChildren() As Currency
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Currency= propNode.Value(i).CurrencyValue
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeDate
		            Dim objChildren() As Date
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Date= GetDate(propNode.Value(i).StringValue)
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeDateTime
		            #if RBVersion> 2019.02
		              Dim objChildren() As DateTime
		              For i As Integer= 0 To propNode.Count- 1
		                Dim objChild As DateTime= DateTime(GetDateTime(propNode.Value(i).StringValue))
		                objChildren.Append objChild
		              Next
		              prop.Value(obj)= objChildren
		            #endif
		          Case kTypeDouble
		            Dim objChildren() As Double
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Double= propNode.Value(i).DoubleValue
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeInt8
		            Dim objChildren() As Int8
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Int8= CType(propNode.Value(i).Int32Value, Int8)
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeInt16
		            Dim objChildren() As Int16
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Int16= CType(propNode.Value(i).Int32Value, Int16)
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeInt32
		            Dim objChildren() As Int32
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Int32= propNode.Value(i).Int32Value
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeInt64
		            Dim objChildren() As Int64
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Int64= propNode.Value(i).Int64Value
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeUInt8
		            Dim objChildren() As UInt8
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As UInt8= CType(propNode.Value(i).Int64Value, UInt8)
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeUInt16
		            Dim objChildren() As UInt16
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As UInt16= CType(propNode.Value(i).Int64Value, UInt16)
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeUInt32
		            Dim objChildren() As UInt32
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As UInt32= CType(propNode.Value(i).Int64Value, UInt32)
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeUInt64
		            Dim objChildren() As UInt64
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As UInt64= CType(propNode.Value(i).Int64Value, UInt64)
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeSingle
		            Dim objChildren() As Single
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Single= propNode.Value(i).DoubleValue
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeString
		            Dim objChildren() As String
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As String= propNode.Value(i).StringValue
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypeVariant // TODO: other objects
		            Dim objChildren() As Variant
		            For i As Integer= 0 To propNode.Count- 1
		              Dim objChild As Variant= propNode.Value(i)
		              objChildren.Append objChild
		            Next
		            prop.Value(obj)= objChildren
		          Case kTypePair
		            Dim objChildren() As Pair
		            For i As Integer= 0 To propNode.Count- 1
		              Dim pairNode As JSONItem= propNode.Child(i)
		              Dim left, right As Variant
		              If pairNode.HasName(kTagLeft) Then left= pairNode.Value(kTagLeft)
		              If pairNode.HasName(kTagRight) Then right= pairNode.Value(kTagRight)
		              objChildren.Append New Pair(left, right)
		            Next
		            prop.Value(obj)= objChildren
		          Case Else // object
		            Dim objChildren() As Object
		            For i As Integer= 0 To propNode.Count- 1
		              Dim propChild As JSONItem= propNode.Child(i)
		              Dim objChild As Object= GetObject(prop.PropertyType)
		              DoLoad objChild, propChild
		              objChildren.Append objChild
		            Next
		            Try
		              #pragma BreakOnExceptions Off
		              prop.Value(obj)= objChildren
		              #pragma BreakOnExceptions Default
		            Catch exc As RuntimeException
		              System.DebugLog CurrentMethodName+ " exc:"+ Introspection.GetType(exc).Name+ " err:"+ exc.Message
		            End Try
		          End Select
		          
		        End If
		      ElseIf prop.PropertyType.IsEnum Then
		        Dim methodName As String= "To"+ prop.PropertyType.Name
		        Dim returnTypeName As String= prop.PropertyType.Name
		        Dim methods() As Introspection.MethodInfo= ti.GetMethods
		        For Each method As Introspection.MethodInfo In methods
		          If method.Name= methodName And method.ReturnType.Name= returnTypeName And _
		            method.GetParameters.Ubound= 0 Then
		            Dim methodParams() As Introspection.ParameterInfo= method.GetParameters
		            If methodParams(0).ParameterType.Name.Lowercase.InStr("int")> 0 Then
		              Dim params() As Variant
		              params.Append node.Value(prop.Name)
		              Try
		                #pragma BreakOnExceptions Off
		                If method.IsShared Then
		                  prop.Value(obj)= method.Invoke(Nil, params)
		                Else
		                  prop.Value(obj)= method.Invoke(obj, params)
		                End If
		                #pragma BreakOnExceptions Default
		              End Try
		            End If
		          End If
		        Next
		      ElseIf prop.PropertyType.IsInterface Then
		        Dim keyName As String= kInterfasePrefix+ prop.PropertyType.Name.Lowercase+ "_load"
		        If Not (mRegisteredClasses Is Nil) And mRegisteredClasses.HasKey(keyName) Then
		          If mRegisteredClasses.Value(keyName) IsA InterfaceLoad Then
		            Dim callMethod As InterfaceLoad= mRegisteredClasses.Value(keyName)
		            Dim propNode As Variant= node.Value(prop.Name)
		            
		            Dim propNodeString As String
		            If propNode IsA JSONItem Then
		              propNodeString= JSONItem(propNode).ToString
		            Else
		              propNodeString= propNode.StringValue
		            End If
		            
		            Try
		              #Pragma BreakOnExceptions Off
		              prop.Value(obj)= callMethod.Invoke(propNodeString, "json")
		              #Pragma BreakOnExceptions Default
		            Catch exc As RuntimeException
		              System.DebugLog CurrentMethodName+ _
		              " 'prop.Value(obj)= callMethod.Invoke(propNodeString, ""json"")' exc:"+ _
		              Introspection.GetType(exc).Name
		            End Try
		            
		          End If
		        End If
		      Else // no array, enum
		        Dim propNode As Variant= node.Value(prop.Name)
		        Select Case prop.PropertyType.FullName.Lowercase
		        Case kTypeDate
		          prop.Value(obj)= GetDate(propNode.StringValue)
		        Case kTypeDateTime
		          #if RBVersion> 2019.02
		            prop.Value(obj)= DateTime(GetDateTime(propNode.StringValue))
		          #endif
		        Case kTypeString
		          prop.Value(obj)= propNode.StringValue
		        Case kTypeInt8, kTypeInt16, kTypeInt32
		          prop.Value(obj)= propNode.Int32Value
		        Case kTypeInt64, kTypeUInt8, kTypeUInt16, kTypeUInt32, kTypeUInt64
		          prop.Value(obj)= propNode.Int64Value
		        Case kTypeSingle, kTypeDouble
		          prop.Value(obj)= propNode.DoubleValue
		        Case kTypeDictionary
		          If propNode IsA JSONItem Then
		            Dim dictNode As JSONItem= JSONItem(propNode)
		            If dictNode.IsArray Then
		              Dim dict As New Dictionary
		              For i As Integer= 0 To dictNode.Count- 1
		                Dim entry As JSONItem= dictNode.Child(i)
		                Dim names() As String= entry.Names
		                For Each name As String In Names
		                  Dim key As String= name // in json all key are strings!!
		                  Dim value As Variant= entry.Value(name)
		                  If value IsA JSONItem Then // object or array
		                    Break // TODO:
		                  Else
		                    Select Case value.Type
		                    Case 2, 3 // integer
		                      dict.Value(key)= value.Int64Value
		                    Case 4, 5, 6 // float
		                      dict.Value(key)= value.DoubleValue
		                    Case 8 // string
		                      Dim d As Date= GetDate(value.StringValue) // try date
		                      If d Is Nil Then dict.Value(key)= value.StringValue Else dict.Value(key)= d
		                    End Select
		                  End If
		                Next // names
		              Next // i
		              prop.Value(obj)= dict
		            End If
		          End If
		        Case kTypePicture
		          If propNode IsA JSONItem Then
		            Dim picNode As JSONItem= JSONItem(propNode)
		            If picNode.HasName(kTagData) Then
		              Dim data As MemoryBlock= DecodeBase64(picNode.Value(kTagData).StringValue)
		              Dim pic As Picture= Picture.FromData(data)
		              prop.Value(obj)= pic
		            End If
		          End If
		        Case kTypePair
		          If propNode IsA JSONItem Then
		            Dim pairNode As JSONItem= JSONItem(propNode)
		            Dim left, right As Variant
		            If pairNode.HasName(kTagLeft) Then left= pairNode.Value(kTagLeft)
		            If pairNode.HasName(kTagRight) Then right= pairNode.Value(kTagRight)
		            Dim p1 As New Pair(left, right)
		            prop.Value(obj)= p1
		          End If
		        Case kTypeVariant // TODO: other objects
		          Dim d As Date= GetDate(propNode) // try date
		          If d Is Nil Then prop.Value(obj)= propNode Else prop.Value(obj)= d
		        Case Else // object
		          If propNode IsA JSONItem Then
		            Break
		            Dim propObj As Object= GetObject(prop.PropertyType)
		            DoLoad propObj, JSONItem(propNode)
		            prop.Value(obj)= propObj
		          End If
		        End Select
		      End If
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub DoLoad(obj As Object, node As XmlNode)
		  If obj Is Nil Then Return
		  If node Is Nil Then Return
		  
		  Dim ti As Introspection.TypeInfo= Introspection.GetType(obj)
		  Dim props() As Introspection.PropertyInfo= ti.GetProperties
		  For Each prop As Introspection.PropertyInfo In props
		    If prop.IsPublic And prop.CanWrite And HasName(node, prop.Name) Then
		      Dim propNode As XmlNode= GetNode(node, prop.Name)
		      If propNode Is Nil Then Continue For prop
		      If prop.PropertyType.IsArray Then
		        Dim propTypeName As String= prop.PropertyType.Name.Replace("()", "").Lowercase
		        Select Case propTypeName
		        Case kTypeBoolean
		          Dim objChildren() As Boolean
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Boolean
		                If propChild.Value.Lowercase= "true" Then objChild= True
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeColor
		          Dim objChildren() As Color
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Color= GetColor(propChild.Value)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeCurrency
		          Dim objChildren() As Currency
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Currency= CType(propChild.Value.Val, Currency)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeDate
		          Dim objChildren() As Date
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Date= GetDate(propChild.Value)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeDateTime
		          #if RBVersion> 2019.02
		            Dim objChildren() As DateTime
		            Dim propChildren As XmlNode= propNode.FirstChild // <array>
		            If Not (propChildren Is Nil) Then
		              For i As Integer= 0 To propChildren.ChildCount- 1
		                Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		                If Not (propChild Is Nil) Then
		                  Dim objChild As DateTime= DateTime(GetDateTime(propChild.Value))
		                  objChildren.Append objChild
		                End If
		              Next
		            End If
		            prop.Value(obj)= objChildren
		          #endif
		        Case kTypeDouble
		          Dim objChildren() As Double
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Double= propChild.Value.Val
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeInt8
		          Dim objChildren() As Int8
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Int8= CType(propChild.Value.Val, Int8)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeInt16
		          Dim objChildren() As Int16
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Int16= CType(propChild.Value.Val, Int16)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeInt32
		          Dim objChildren() As Int32
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Int32= CType(propChild.Value.Val, Int32)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeInt64
		          Dim objChildren() As Int64
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Int64= CType(propChild.Value.Val, Int64)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeUInt8
		          Dim objChildren() As UInt8
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As UInt8= CType(propChild.Value.Val, UInt8)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeUInt16
		          Dim objChildren() As UInt16
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As UInt16= CType(propChild.Value.Val, UInt16)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeUInt32
		          Dim objChildren() As UInt32
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As UInt32= CType(propChild.Value.Val, UInt32)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeUInt64
		          Dim objChildren() As UInt64
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As UInt64= CType(propChild.Value.Val, UInt64)
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeSingle
		          Dim objChildren() As Single
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Single= propChild.Value.Val
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeString
		          Dim objChildren() As String
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As String= propChild.Value
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypeVariant // TODO: other objects
		          Dim objChildren() As Variant
		          Dim propChildren As XmlNode= propNode.FirstChild // <array>
		          If Not (propChildren Is Nil) Then
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i).FirstChild // <entry>
		              If Not (propChild Is Nil) Then
		                Dim objChild As Variant= propChild.Value
		                objChildren.Append objChild
		              End If
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case kTypePair
		          Dim objChildren() As Pair
		          Dim propChildren As XmlNode= propNode.FirstChild
		          If propChildren.Name= kTagArray Then // <array>
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i)
		              Dim objChild As Pair
		              DoLoad objChild, propChild
		              objChildren.Append objChild
		            Next
		          End If
		          prop.Value(obj)= objChildren
		        Case Else // object
		          Dim objChildren() As Object
		          Dim propChildren As XmlNode= propNode.FirstChild
		          If propChildren.Name= kTagArray Then // <array>
		            For i As Integer= 0 To propChildren.ChildCount- 1
		              Dim propChild As XmlNode= propChildren.Child(i)
		              Dim objChild As Object= GetObject(prop.PropertyType)
		              DoLoad objChild, propChild
		              objChildren.Append objChild
		            Next
		            #pragma BreakOnExceptions Off
		            prop.Value(obj)= objChildren
		            #pragma BreakOnExceptions Default
		          Else
		            For i As Integer= 0 To propNode.ChildCount- 1
		              Dim propChild As XmlNode= propNode.Child(i)
		              Dim objChild As Object= GetObject(prop.PropertyType)
		              DoLoad objChild, propChild
		              objChildren.Append objChild
		            Next
		            #pragma BreakOnExceptions Off
		            prop.Value(obj)= objChildren
		            #pragma BreakOnExceptions Default
		          End If
		        End Select
		      ElseIf  prop.PropertyType.IsEnum Then
		        Dim methodName As String= "To"+ prop.PropertyType.Name
		        Dim returnTypeName As String= prop.PropertyType.Name
		        Dim methods() As Introspection.MethodInfo= ti.GetMethods
		        For Each method As Introspection.MethodInfo In methods
		          If method.Name= methodName And method.ReturnType.Name= returnTypeName And _
		            method.GetParameters.Ubound= 0 Then
		            Dim methodParams() As Introspection.ParameterInfo= method.GetParameters
		            If methodParams(0).ParameterType.Name.Lowercase.InStr("int")> 0 Then
		              Dim params() As Variant
		              params.Append propNode.FirstChild.Value.Val
		              Try
		                #pragma BreakOnExceptions Off
		                If method.IsShared Then
		                  prop.Value(obj)= method.Invoke(Nil, params)
		                Else
		                  prop.Value(obj)= method.Invoke(obj, params)
		                End If
		                #pragma BreakOnExceptions Default
		              End Try
		            End If
		          End If
		        Next
		      ElseIf prop.PropertyType.IsInterface Then
		        Dim keyName As String= kInterfasePrefix+ prop.PropertyType.Name.Lowercase+ "_load"
		        If Not (mRegisteredClasses Is Nil) And mRegisteredClasses.HasKey(keyName) Then
		          If mRegisteredClasses.Value(keyName) IsA InterfaceLoad Then
		            Dim callMethod As InterfaceLoad= mRegisteredClasses.Value(keyName)
		            Dim propNodeString As String= propNode.FirstChild.Value
		            
		            Try
		              #Pragma BreakOnExceptions Off
		              prop.Value(obj)= callMethod.Invoke(propNodeString, "xml")
		              #Pragma BreakOnExceptions Default
		            Catch exc As RuntimeException
		              System.DebugLog CurrentMethodName+ _
		              " 'prop.Value(obj)= callMethod.Invoke(propNodeString, ""xml"")' exc:"+ _
		              Introspection.GetType(exc).Name
		            End Try
		            
		          End If
		        End If
		      Else // no array, enum
		        Select Case prop.PropertyType.FullName.Lowercase
		        Case kTypeDate
		          If Not (propNode.FirstChild Is Nil) Then
		            prop.Value(obj)= GetDate(propNode.FirstChild.Value)
		          End If
		        Case kTypeDateTime
		          #if RBVersion> 2019.02
		            If Not (propNode.FirstChild Is Nil) Then
		              prop.Value(obj)= DateTime(GetDateTime(propNode.FirstChild.Value))
		            End If
		          #endif
		        Case kTypeString
		          If Not (propNode.FirstChild Is Nil) Then
		            prop.Value(obj)= propNode.FirstChild.Value
		          End If
		        Case kTypeInt8, kTypeInt16, kTypeInt32, kTypeInt64, kTypeUInt8, kTypeUInt16, kTypeUInt32, kTypeUInt64, kTypeSingle, kTypeDouble
		          If Not (propNode.FirstChild Is Nil) Then
		            prop.Value(obj)= propNode.FirstChild.Value.Val
		          End If
		        Case kTypeDictionary
		          Dim dict As New Dictionary
		          Dim dictNode As XmlNode= propNode.FirstChild
		          If Not (dictNode Is Nil) Then
		            For i As Integer= 0 To dictNode.ChildCount- 1
		              Dim key, value As Variant
		              Dim entry As XmlNode= dictNode.Child(i)
		              If entry.FirstChild.Name= "key" And entry.FirstChild.FirstChild IsA XmlTextNode Then
		                key= entry.FirstChild.FirstChild.Value
		              End If
		              If entry.LastChild.Name= "value" And entry.LastChild.FirstChild IsA XmlTextNode Then
		                value= entry.LastChild.FirstChild.Value
		              End If
		              dict.Value(key)= value
		            Next
		          End If
		          prop.Value(obj)= dict
		        Case kTypePicture
		          Dim picNode As XmlNode= GetNode(propNode.FirstChild, kTagDataXml)
		          If Not (picNode Is Nil) Then
		            Dim data As MemoryBlock= DecodeBase64(picNode.FirstChild.Value)
		            Dim pic As Picture= Picture.FromData(data)
		            prop.Value(obj)= pic
		          End If
		        Case kTypePair
		          Dim leftNode As XmlNode= GetNode(propNode.FirstChild, kTagLeft)
		          Dim rightNode As XmlNode= GetNode(propNode.FirstChild, kTagRight)
		          Dim p1 As New Pair(leftNode.FirstChild.Value, rightNode.FirstChild.Value)
		          prop.Value(obj)= p1
		        Case kTypeVariant // TODO: other objects
		          If Not (propNode.FirstChild Is Nil) Then
		            Dim d As Date= GetDate(propNode.FirstChild.Value) // try date
		            If d Is Nil Then prop.Value(obj)= propNode.FirstChild.Value Else prop.Value(obj)= d
		          End If
		        Case Else // object
		          Dim propObj As Object= GetObject(prop.PropertyType)
		          DoLoad propObj, propNode.FirstChild
		          prop.Value(obj)= propObj
		          Break
		        End Select
		      End If
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function Formatter(frmt As String, args() As Variant) As String
		  If frmt.Len= 0 Then Return frmt
		  If args.Ubound= -1 Then Return frmt
		  
		  Dim enc As TextEncoding= frmt.Encoding
		  frmt= ConvertEncoding(frmt, Encodings.UTF8) // regex needs utf8
		  
		  Dim ret As String= frmt
		  Dim idx As Integer
		  
		  Dim rg As New RegEx
		  Dim rgm As RegExMatch
		  
		  // search
		  rg.SearchPattern= "\%(\d*[.\d]*)([\#0.,;\%\(\)\+\-eE]*)([\{a-z\}]*)[dufs]" // TODO: {somekey}
		  rgm= rg.Search(frmt)
		  
		  While rgm<> Nil
		    If idx> args.Ubound Then Exit
		    
		    Dim arg As String= rgm.SubExpressionString(0)
		    Dim argFrmt As String= rgm.SubExpressionString(1) //= ToFormatSpec(arg.Mid(2, arg.Len- 2))
		    If argFrmt<> "" Then
		      argFrmt= ToFormatSpec(argFrmt)
		    Else
		      argFrmt= rgm.SubExpressionString(2)
		    End If
		    
		    Const frmtInt= "####################"
		    
		    Select Case arg.Right(1).Lowercase
		    Case "d"
		      If argFrmt= "" Then argFrmt= "-"+ frmtInt
		      ret= ret.Replace(arg, Format(args(idx).Int64Value, argFrmt))
		    Case "u"
		      If argFrmt= "" Then argFrmt= frmtInt
		      ret= ret.Replace(arg, Format(args(idx).UInt64Value, argFrmt))
		    Case "f"
		      If argFrmt= "" Then
		        argFrmt= "-"+ frmtInt+ "."+ frmtInt
		      ElseIf argFrmt.Left(1)<> "-" And argFrmt.Left(1)<> "+" Then
		        argFrmt= "-"+ argFrmt
		      End If
		      ret= ret.Replace(arg, Format(args(idx).DoubleValue, argFrmt))
		    Case "s"
		      ret= ret.Replace(arg, args(idx).StringValue)
		    End Select
		    
		    idx= idx+ 1
		    
		    rgm= rg.Search
		  Wend
		  
		  If enc Is Nil Then
		    Return ret
		  Else
		    Return ConvertEncoding(ret, enc)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetColor(cStr As String) As Color
		  If cStr.Len= 0 Then Return &c000000FF
		  If cstr.Left(1)= "#" Then
		    If cStr.Len< 4 Then Return &c000000FF
		    
		    cStr= cStr.Mid(2)
		    
		    Const hH= "&h"
		    Dim red, green, blue, alpha As Integer
		    If cStr.Len= 3 Then // "FFF"
		      red= Val(hH+ cStr.Mid(1, 1))
		      green= Val(hH+ cStr.Mid(2, 1))
		      blue= Val(hH+ cStr.Mid(3, 1))
		    ElseIf cStr.Len= 4 Then // "FFFF"
		      red= Val(hH+ cStr.Mid(1, 1))
		      green= Val(hH+ cStr.Mid(2, 1))
		      blue= Val(hH+ cStr.Mid(3, 1))
		      alpha= Val(hH+ cStr.Mid(4, 1))
		    ElseIf cStr.Len=6 Then // "0F0F0F"
		      red= Val(hH+ cStr.Mid(1, 2))
		      green= Val(hH+ cStr.Mid(3, 2))
		      blue= Val(hH+ cStr.Mid(5, 2))
		    ElseIf cStr.Len=8 Then // "0F0F0F0F"
		      red= Val(hH+ cStr.Mid(1, 2))
		      green= Val(hH+ cStr.Mid(3, 2))
		      blue= Val(hH+ cStr.Mid(5, 2))
		      alpha= Val(hH+ cStr.Mid(7, 2))
		    Else
		      alpha= &hFF
		    End If
		    
		    Return RGB(red, green, blue, alpha)
		  End If
		  
		  Dim colrs() As String= cStr.Split(",")
		  If colrs.Ubound< 2 Then  Return &c000000FF
		  
		  Dim red As Integer= colrs(0).Val
		  Dim green As Integer= colrs(1).Val
		  Dim blue As Integer= colrs(2).Val
		  Dim alpha As Integer= &hFF
		  If colrs.Ubound< 4 Then alpha= colrs(3).Val
		  
		  Return RGB(red, green, blue, alpha)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetDate(dStr As String) As Date
		  If dStr.Len< 24 Then Return Nil
		  
		  Dim dYear As Integer= dStr.Mid(1, 4).Val
		  Dim dMonth As Integer= dStr.Mid(6, 2).Val
		  Dim dDay As Integer= dStr.Mid(9, 2).Val
		  Dim dHour As Integer= dStr.Mid(12, 2).Val
		  Dim dMinute As Integer= dStr.Mid(15, 2).Val
		  Dim dSeconds As Integer= dStr.Mid(18, 2).Val
		  Dim dGMT As Double= dStr.Mid(20, 5).Val/ 100
		  Dim d As Date
		  Try
		    #pragma BreakOnExceptions Off
		    d= New Date(dYear, dMonth, dDay, dHour, dMinute, dSeconds, dGMT)
		    #pragma BreakOnExceptions Default
		  End Try
		  
		  Return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetDateTime(dStr As String) As Object
		  #if RBVersion> 2019.02
		    Var d As DateTime
		    
		    Try
		      #pragma BreakOnExceptions Off
		      Dim dYear As Integer= dStr.Mid(1, 4).Val
		      Dim dMonth As Integer= dStr.Mid(6, 2).Val
		      Dim dDay As Integer= dStr.Mid(9, 2).Val
		      Dim dHour As Integer= dStr.Mid(12, 2).Val
		      Dim dMinute As Integer= dStr.Mid(15, 2).Val
		      Dim dSeconds As Integer= dStr.Mid(18, 2).Val
		      Dim dGMT As Double= (dStr.Mid(20, 5).Val/ 100)* 60* 60
		      d= New DateTime(dYear, dMonth, dDay, dHour, dMinute, dSeconds, 0, New TimeZone(dGMT))
		      #pragma BreakOnExceptions Default
		    End Try
		    
		    Return DateTime(d)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetNode(node As XmlNode, name As String) As XmlNode
		  If node Is Nil Then Return Nil
		  If name.Len= 0 Then Return Nil
		  
		  For i As Integer= 0 To node.ChildCount- 1
		    If node.Child(i).Name= name Then Return node.Child(i)
		  Next
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetObject(prop As Introspection.TypeInfo) As Object
		  Dim ti As Introspection.TypeInfo= RegisteredClassGet(prop.Name.Replace("()", ""))
		  If ti Is Nil Then
		    ti= RegisteredClassGet(prop.FullName.Replace("()", ""))
		    If ti Is Nil Then Return Nil
		  End If
		  
		  Dim zeroConstructor As Introspection.ConstructorInfo
		  For Each constructor As Introspection.ConstructorInfo In ti.GetConstructors
		    If constructor.GetParameters.UBound= -1 Then
		      zeroConstructor= constructor
		      'Exit For constructor
		    End If
		  Next
		  If zeroConstructor Is Nil Then Return Nil
		  
		  Dim o As Object
		  Try
		    #pragma BreakOnExceptions False
		    o= zeroConstructor.Invoke
		    #pragma BreakOnExceptions Default
		  Catch err As RuntimeException
		    System.DebugLog CurrentMethodName+ " 'o= zeroConstructor.Invoke' exception: "+ _
		    Introspection.GetType(err).FullName+ " "+ err.Message
		  End Try
		  
		  Return o
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function HasName(node As XmlNode, name As String) As Boolean
		  If node Is Nil Then Return False
		  If name.Len= 0 Then Return False
		  
		  For i As Integer= 0 To node.ChildCount- 1
		    If node.Child(i).Name= name Then Return True
		  Next
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ImplAppendJson(value As Variant, addDelim As Boolean = False, escaping As Boolean = True)
		  Dim valueType As Integer= value.Type
		  
		  Select Case valueType
		  Case 0
		    mBuffer.Write "null"
		  Case 2, 3 // integer
		    mBuffer.Write Str(value.Int64Value, kFrmtInts)
		  Case 4, 5, 6 // float
		    mBuffer.Write Str(value.DoubleValue, kFrmtFloats)
		  Case 7 // date
		    Dim dstr As String= value.DateValue.SQLDateTime
		    Dim gmt As Integer= value.DateValue.GMTOffset* 100
		    If gmt>= 0 Then dstr= dstr+ "+"+ Str(gmt, "0000") Else dstr= dstr+ Str(gmt, "-0000")
		    If addDelim Then mBuffer.Write(kQt)
		    mBuffer.Write dstr
		    If addDelim Then mBuffer.Write(kQt)
		  Case 8 // string
		    If addDelim Then mBuffer.Write(kQt)
		    If escaping Then
		      mBuffer.Write value.StringValue.ReplaceAll(kBs, "\\").ReplaceAll(kQt, "\""")._
		      ReplaceAll(Chr(8), "\b").ReplaceAll(Chr(9), "\t").ReplaceAll(Chr(10), "\n")._
		      ReplaceAll(Chr(12), "\f").ReplaceAll(Chr(13), "\r")
		    Else
		      mBuffer.Write value.StringValue
		    End If
		    If addDelim Then mBuffer.Write(kQt)
		  Case 9 // object
		    Dim noRemove As Boolean
		    Dim hash As Int64= value.Hash
		    If mTrackedObjs.HasKey(hash) Then // set in previous recursive call
		      noRemove= True
		      Dim ti As Introspection.TypeInfo= Introspection.GetType(value)
		      If mAddSpecialTags Then
		        mBuffer.Write kLb+ kQt+ kTagType+ kQt+ kCo+ kQt+ ti.FullName+ kQt+ kCm+ _
		        kQt+ kTagID+ kQt+ kCo+ kQt+ EncodeHex(Md5(Str(value.Hash)))+ kQt+ kRb
		      Else
		        mBuffer.Write kLb+ kRb
		      End If
		    Else // track this
		      mTrackedObjs.Value(hash)= True
		      ImplAppendObjectJson value
		    End If
		    If Not noRemove Then mTrackedObjs.Remove hash
		  Case 11 // Boolean
		    mBuffer.Write value.StringValue.Lowercase
		  Case 16 // color
		    Dim colr As Color= value.ColorValue
		    Select Case ColorFormat
		    Case ColorFormats.RGBADecimal
		      If addDelim Then mBuffer.Write(kQt)
		      mBuffer.Write Str(colr.Red)+ kCm+ Str(colr.Green)+ kCm+ Str(colr.Blue)+ kCm+ Str(colr.Alpha)
		      If addDelim Then mBuffer.Write(kQt)
		    Case ColorFormats.RGBAHexadecimal
		      Dim red As String= Hex(colr.Red)
		      Dim green As String= Hex(colr.Green)
		      Dim blue As String= Hex(colr.Blue)
		      Dim alpha As String= Hex(colr.Alpha)
		      
		      If Not (red.Len= 1 And green.Len= 1 And blue.Len= 1  And alpha.Len= 1) Then
		        If red.Len= 1 Then red= k0n+ red
		        If green.Len= 1 Then green= k0n+ green
		        If blue.Len= 1 Then blue= k0n+ blue
		        If alpha.Len= 1 Then alpha= k0n+ alpha
		      End If
		      
		      Dim s1 As String= "#"+ red+ green+ blue
		      If colr.Alpha> 0 Then s1= s1+ alpha
		      
		      If addDelim Then mBuffer.Write(kQt)
		      mBuffer.Write s1
		      If addDelim Then mBuffer.Write(kQt)
		    End Select
		  Case 18, 19, 20, 21, 22, 23, 26, 36
		    Break
		  Case 38 // DateTime
		    #if RBVersion> 2019.02
		      Dim dstr As String= value.DateTimeValue.SQLDateTime
		      Dim gmt As Integer
		      If value.DateTimeValue.Timezone Is Nil Then
		        gmt= Timezone.Current.SecondsFromGMT/ 60/ 60* 100
		      Else
		        gmt= value.DateTimeValue.Timezone.SecondsFromGMT/ 60/ 60* 100
		      End If
		      If gmt>= 0 Then dstr= dstr+ "+"+ Str(gmt, "0000") Else dstr= dstr+ Str(gmt, "-0000")
		      If addDelim Then mBuffer.Write(kQt)
		      mBuffer.Write dstr
		      If addDelim Then mBuffer.Write(kQt)
		    #endif
		    
		  Case Else
		    If value.IsArray Then
		      If addDelim Then mBuffer.Write(kLk)
		      Select Case value.ArrayElementType
		      Case 2 // integer
		        Dim arr() As Int32= value
		        Dim n As Integer= arr.Ubound
		        For i As Integer= 0 To n
		          ImplAppendJson arr(i)
		          If (i+ 1)<= n Then mBuffer.Write(kCm)
		        Next
		      Case 3 // long integer
		        Dim arr() As Int64= value
		        Dim n As Integer= arr.Ubound
		        For i As Integer= 0 To n
		          ImplAppendJson arr(i)
		          If (i+ 1)<= n Then mBuffer.Write(kCm)
		        Next
		      Case 4 // Single
		        Dim arr() As Single= value
		        Dim n As Integer= arr.Ubound
		        For i As Integer= 0 To n
		          ImplAppendJson arr(i)
		          If (i+ 1)<= n Then mBuffer.Write(kCm)
		        Next
		      Case 5 // Double
		        Dim arr() As Double= value
		        Dim n As Integer= arr.Ubound
		        For i As Integer= 0 To n
		          ImplAppendJson arr(i)
		          If (i+ 1)<= n Then mBuffer.Write(kCm)
		        Next
		      Case 6 // Currency
		        Dim arr() As Currency= value
		        Dim n As Integer= arr.Ubound
		        For i As Integer= 0 To n
		          ImplAppendJson arr(i)
		          If (i+ 1)<= n Then mBuffer.Write(kCm)
		        Next
		      Case 7 // date
		        Dim arr() As Date= value
		        Dim n As Integer= arr.Ubound
		        For i As Integer= 0 To n
		          ImplAppendJson arr(i)
		          If (i+ 1)<= n Then mBuffer.Write(kCm)
		        Next
		      Case 8 // string
		        Dim arr() As String= value
		        Dim n As Integer= arr.Ubound
		        For i As Integer= 0 To n
		          ImplAppendJson arr(i), True
		          If (i+ 1)<= n Then mBuffer.Write(kCm)
		        Next
		      Case 9 // object
		        Dim arr() As Object= value
		        Dim n As Integer= arr.Ubound
		        For i As Integer= 0 To n
		          ImplAppendJson arr(i), True
		          If (i+ 1)<= n Then mBuffer.Write(kCm)
		        Next
		      Case 11 // Boolean
		        Dim arr() As Boolean= value
		        Dim n As Integer= arr.Ubound
		        For i As Integer= 0 To n
		          ImplAppendJson arr(i)
		          If (i+ 1)<= n Then mBuffer.Write(kCm)
		        Next
		      Case 16 // color
		        Dim arr() As Color= value
		        Dim n As Integer= arr.Ubound
		        For i As Integer= 0 To n
		          ImplAppendJson arr(i), True
		          If (i+ 1)<= n Then mBuffer.Write(kCm)
		        Next
		      End Select
		      If addDelim Then mBuffer.Write(kRk)
		    Else
		      Break
		    End If
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ImplAppendObjectJson(value As Variant)
		  If value IsA EndOfLine Then // special objs
		    mBuffer.Write EndOfLine
		    Return
		  End If
		  
		  Dim ti As Introspection.TypeInfo= Introspection.GetType(value)
		  
		  // 1: look for ToString As String method
		  Dim methods() As Introspection.MethodInfo= ti.GetMethods
		  For Each method As Introspection.MethodInfo In methods
		    If method.IsPublic And method.GetParameters.Ubound= -1 And _
		      method.Name.Lowercase= MethodName.Lowercase And _
		      method.ReturnType.Name.Lowercase= kTypeString Then
		      Try
		        #pragma BreakOnExceptions Off
		        Dim s1 As String= method.Invoke(value)
		        #pragma BreakOnExceptions Default
		        mBuffer.Write s1
		      Catch err As RuntimeException
		        System.DebugLog CurrentMethodName+ " 's1= method.Invoke(value)' err:"+_
		        Introspection.GetType(err).FullName+ "("+ err.Message+ ")"
		      End Try
		      Return
		    ElseIf method.Name.InStr(MethodName+ ".Get")> 0 Then // ini ToString.Get
		      Dim params() As Variant
		      params.Append 0
		      
		      Try
		        #pragma BreakOnExceptions Off
		        Dim s1 As String= method.Invoke(value, params)
		        #pragma BreakOnExceptions Default
		        mBuffer.Write s1
		      Catch err As RuntimeException
		        System.DebugLog CurrentMethodName+ " 's1= method.Invoke(value)' err:"+_
		        Introspection.GetType(err).FullName+ "("+ err.Message+ ")"
		      End Try
		      Return // end ToString.Get
		    End If
		  Next
		  
		  If value IsA Dictionary Then // special case
		    Dim dict As Dictionary= value
		    Dim n As Integer= dict.Count- 1
		    mBuffer.Write kLk
		    For i As Integer= 0 To n
		      mBuffer.Write(kLb)
		      Try
		        ImplAppendJson dict.Key(i), True
		        mBuffer.Write kCo
		        ImplAppendJson dict.Value(dict.Key(i)), True
		      Catch err As RuntimeException
		        System.DebugLog CurrentMethodName+ " 'ImplAppendJson dict.Value(dict.Key(i)), True' err:"+_
		        Introspection.GetType(err).FullName+ "("+ err.Message+ ")"
		      End Try
		      mBuffer.Write(kRb)
		      If (i+ 1)<= n Then mBuffer.Write(kCm)
		    Next
		    mBuffer.Write kRk
		    Return
		  End If
		  
		  If mAddSpecialTags Then
		    mBuffer.Write kLb+ kQt+ kTagType+ kQt+ kCo+ kQt+ ti.FullName+ kQt+ kCm+ _
		    kQt+ kTagID+ kQt+ kCo+ kQt+ EncodeHex(Md5(Str(value.Hash)))+ kQt
		  Else
		    mBuffer.Write kLb
		  End If
		  
		  If Not (value IsA Picture) Then // object
		    Dim props() As Introspection.PropertyInfo= ti.GetProperties
		    Dim writeCm As Boolean
		    For Each prop As Introspection.PropertyInfo In props // 2: loop for properties
		      If prop.IsPublic And prop.CanRead Then
		        If mAddSpecialTags Or writeCm Then mBuffer.Write(kCm) Else writeCm= True
		        mBuffer.Write kQt+ prop.Name+ kQt+ kCo
		        If mTrackedObjs.HasKey(prop.Value(value).Hash) Then
		          mBuffer.Write  kLb+ kQt+ kTagID+ kQt+ kCo+ kQt+ _
		          EncodeHex(Md5(Str(prop.Value(value).Hash)))+ kQt+ kRb
		        ElseIf Not (prop.Value(value) Is Nil) And prop.PropertyType.IsInterface Then
		          Dim toWrite As String= """¡INTERFASE_NO_IMPLEMENTED!"""
		          Dim keyName As String= kInterfasePrefix+ prop.PropertyType.Name.Lowercase+ "_append"
		          If Not (mRegisteredClasses Is Nil) And mRegisteredClasses.HasKey(keyName) Then
		            If mRegisteredClasses.Value(keyName) IsA InterfaceAppend Then
		              Dim callMethod As InterfaceAppend= mRegisteredClasses.Value(keyName)
		              Try
		                #Pragma BreakOnExceptions Off
		                toWrite= callMethod.Invoke(prop.Value(value), "json")
		                #Pragma BreakOnExceptions Default
		              Catch exc As RuntimeException
		                System.DebugLog CurrentMethodName+ _
		                " 'toWrite= callMethod.Invoke(prop.Value(value), ""json"")' exc:"+ _
		                Introspection.GetType(exc).Name
		              End Try
		            End If
		          End If
		          mBuffer.Write toWrite
		        Else
		          Try
		            #pragma BreakOnExceptions Off
		            ImplAppendJson prop.Value(value), True
		            #pragma BreakOnExceptions Default
		          Catch err As RuntimeException
		            System.DebugLog CurrentMethodName+ " 'ImplAppendJson prop.Value(value)' err:"+ _
		            Introspection.GetType(err).FullName+ "("+ err.Message+ ")"
		          End Try
		        End If
		      End If
		    Next
		  ElseIf value IsA Picture Then // special objs
		    Dim obj As Picture= value
		    If mAddSpecialTags Then mBuffer.Write(kCm)
		    mBuffer.Write kQt+ kTagData+ kQt+ kCo+ kQt+ EncodeBase64(obj.GetData(Picture.FormatPNG), 0)+ kQt
		  End If
		  
		  If value IsA Group2D Then // special objs
		    Dim obj As Group2D= value
		    If obj.Count> 0 Then
		      Dim n As Integer= obj.Count- 1
		      mBuffer.Write kCm+ kQt+ kTagItems+ kQt+ kCo+ kLk
		      For i As Integer= 0 To n
		        ImplAppendJson obj.Item(i)
		        If (i+ 1)<= n Then mBuffer.Write(kCm)
		      Next
		      mBuffer.Write kRk
		    End If
		  ElseIf value IsA FigureShape Then
		    Dim obj As FigureShape= value
		    If obj.Count> 0 Then
		      Dim n As Integer= obj.Count- 1
		      mBuffer.Write kCm+ kQt+ kTagItems+ kQt+ kCo+ kLk
		      For i As Integer= 0 To n
		        ImplAppendJson obj.Item(i)
		        If (i+ 1)<= n Then mBuffer.Write(kCm)
		      Next
		      mBuffer.Write kRk
		    End If
		  End If
		  
		  #If TargetDesktop // TODO:
		    'If value IsA Window Then
		    'Dim obj As Window= value
		    'If obj.ControlCount> 0 Then
		    'Dim n As Integer= obj.ControlCount- 1
		    'mBuffer.Write kCm+ kQt+ kTagItems+ kQt+ kCo+ kLk
		    'For i As Integer= 0 To n
		    'ImplAppendJson obj.Control(i)
		    'If (i+ 1)<= n Then mBuffer.Write(kCm)
		    'Next
		    'mBuffer.Write kRk
		    'End If
		    'End If
		  #endif
		  
		  mBuffer.Write kRb
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ImplAppendObjectXml(value As Variant)
		  If value IsA EndOfLine Then // special objs
		    mBuffer.Write EndOfLine
		    Return
		  End If
		  
		  Dim ti As Introspection.TypeInfo= Introspection.GetType(value)
		  
		  // 1: look for ToXml As String method
		  Dim methods() As Introspection.MethodInfo= ti.GetMethods
		  For Each method As Introspection.MethodInfo In methods
		    If method.IsPublic And method.GetParameters.Ubound= -1 And _
		      method.Name.Lowercase= MethodName.Lowercase And _
		      method.ReturnType.Name.Lowercase= kTypeString Then
		      Try
		        #pragma BreakOnExceptions Off
		        Dim s1 As String= method.Invoke(value)
		        #pragma BreakOnExceptions Default
		        mBuffer.Write s1
		      Catch err As RuntimeException
		        System.DebugLog CurrentMethodName+ " 's1= method.Invoke(value)' err:"+_
		        Introspection.GetType(err).FullName+ "("+ err.Message+ ")"
		      End Try
		      Return
		    End If
		  Next
		  
		  If value IsA Dictionary Then // special case
		    Dim dict As Dictionary= value
		    Dim n As Integer= dict.Count- 1
		    mBuffer.Write kLt+ kTagDictionary+ kGt
		    For i As Integer= 0 To n
		      mBuffer.Write kLt+ kTagEntry+ kGt
		      Try
		        mBuffer.Write kLt+ kTagKey+ kGt
		        ImplAppendXml dict.Key(i)
		        mBuffer.Write kLt+ kFs+ kTagKey+ kGt+ kLt+ kTagValue+ kGt
		        ImplAppendXml dict.Value(dict.Key(i))
		        mBuffer.Write kLt+ kFs+ kTagValue+ kGt
		      Catch err As RuntimeException
		        System.DebugLog CurrentMethodName+ " 'ImplAppendXml dict.Value(dict.Key(i))' err:"+_
		        Introspection.GetType(err).FullName+ "("+ err.Message+ ")"
		      End Try
		      mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		    Next
		    mBuffer.Write kLt+ kFs+ kTagDictionary+ kGt
		    Return
		  End If
		  
		  If mAddSpecialTags Then
		    mBuffer.Write kLt+ ti.FullName+ kSp+ kTagIDXml+ kEq+ kQt+ EncodeHex(Md5(Str(value.Hash)))+ kQt+ kGt
		  Else
		    mBuffer.Write kLt+ ti.FullName+ kGt
		  End If
		  
		  If Not (value IsA Picture) Then
		    Dim props() As Introspection.PropertyInfo= ti.GetProperties
		    For Each prop As Introspection.PropertyInfo In props // 2: loop for properties
		      If prop.IsPublic And prop.CanRead Then
		        mBuffer.Write kLt+ prop.Name
		        If mTrackedObjs.HasKey(prop.Value(value).Hash) Then
		          mBuffer.Write kSp+ kTagIDXml+ kEq+ kQt+ EncodeHex(Md5(Str(prop.Value(value).Hash)))+ kQt+ kGt
		        ElseIf Not (prop.Value(value) Is Nil) And prop.PropertyType.IsInterface Then
		          mBuffer.Write kGt
		          Dim toWrite As String= "¡INTERFASE_NO_IMPLEMENTED!"
		          Dim keyName As String= kInterfasePrefix+ prop.PropertyType.Name.Lowercase+ "_append"
		          If Not (mRegisteredClasses Is Nil) And mRegisteredClasses.HasKey(keyName) Then
		            If mRegisteredClasses.Value(keyName) IsA InterfaceAppend Then
		              Dim callMethod As InterfaceAppend= mRegisteredClasses.Value(keyName)
		              Try
		                #Pragma BreakOnExceptions Off
		                toWrite= callMethod.Invoke(prop.Value(value), "xml")
		                #Pragma BreakOnExceptions Default
		              Catch exc As RuntimeException
		                System.DebugLog CurrentMethodName+ _
		                " 'toWrite= callMethod.Invoke(prop.Value(value), ""xml"")' exc:"+ _
		                Introspection.GetType(exc).Name
		              End Try
		            End If
		          End If
		          mBuffer.Write toWrite
		        Else
		          mBuffer.Write kGt
		          Try
		            #pragma BreakOnExceptions Off
		            ImplAppendXml prop.Value(value), False, True, prop.PropertyType.Name
		            #pragma BreakOnExceptions Default
		          Catch err As RuntimeException
		            System.DebugLog CurrentMethodName+ " 'ImplAppendXml prop.Value(value)' err:"+ _
		            Introspection.GetType(err).FullName+ "("+ err.Message+ ")"
		          End Try
		        End If
		        mBuffer.Write kLt+ kFs+ prop.Name+ kGt
		      End If
		    Next
		  ElseIf value IsA Picture Then
		    Dim obj As Picture= value
		    mBuffer.Write kLt+ kTagDataXml+ kGt
		    mBuffer.Write EncodeBase64(obj.GetData(Picture.FormatPNG), 0)
		    mBuffer.Write kLt+ kFs+ kTagDataXml+ kGt
		  End If
		  
		  If value IsA Group2D Then // special objs
		    Dim obj As Group2D= value
		    If obj.Count> 0 Then
		      Dim n As Integer= obj.Count- 1
		      mBuffer.Write kLt+ kTagItemsXml+ kGt
		      For i As Integer= 0 To n
		        ImplAppendXml obj.Item(i)
		      Next
		      mBuffer.Write kLt+ kFs+ kTagItemsXml+ kGt
		    End If
		  ElseIf value IsA FigureShape Then
		    Dim obj As FigureShape= value
		    If obj.Count> 0 Then
		      Dim n As Integer= obj.Count- 1
		      mBuffer.Write kLt+ kTagItemsXml+ kGt
		      For i As Integer= 0 To n
		        ImplAppendXml obj.Item(i)
		      Next
		      mBuffer.Write kLt+ kFs+ kTagItemsXml+ kGt
		    End If
		  End If
		  
		  #If TargetDesktop // TODO:
		    'If value IsA Window Then
		    'Dim obj As Window= value
		    'If obj.ControlCount> 0 Then
		    'Dim n As Integer= obj.ControlCount- 1
		    'mBuffer.Write kLt+ kTagItemsXml+ kGt
		    'For i As Integer= 0 To n
		    'ImplAppendXml obj.Control(i)
		    'Next
		    'mBuffer.Write kLt+ kFs+ kTagItemsXml+ kGt
		    'End If
		    'End If
		  #endif
		  
		  mBuffer.Write kLt+ kFs+ ti.FullName+ kGt
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ImplAppendXml(value As Variant, addDelim As Boolean = False, escaping As Boolean = True, propTypeName As String = "")
		  Dim valueType As Integer= value.Type
		  
		  Select Case valueType
		  Case 0
		    mBuffer.Write "null"
		  Case 2, 3 // integer
		    mBuffer.Write Str(value.Int64Value, kFrmtInts)
		  Case 4, 5, 6 // float
		    mBuffer.Write Str(value.DoubleValue, kFrmtFloats)
		  Case 7 // date
		    Dim dstr As String= value.DateValue.SQLDateTime
		    Dim gmt As Integer= value.DateValue.GMTOffset* 100
		    If gmt>= 0 Then dstr= dstr+ "+"+ Str(gmt, "0000") Else dstr= dstr+ Str(gmt, "-0000")
		    If addDelim Then mBuffer.Write(kQt)
		    mBuffer.Write dstr
		    If addDelim Then mBuffer.Write(kQt)
		  Case 8 // string
		    If addDelim Then mBuffer.Write(kQt)
		    If escaping Then
		      mBuffer.Write value.StringValue.ReplaceAll(kAm, "&amp;").ReplaceAll(kQt, "&quot;")._
		      ReplaceAll(kAp, "&apos;").ReplaceAll(kLt, "&lt;").ReplaceAll(kGt, "&gt;")
		    Else
		      mBuffer.Write value.StringValue
		    End If
		    If addDelim Then mBuffer.Write(kQt)
		  Case 9 // object
		    Dim noRemove As Boolean
		    Dim hash As Int64= value.Hash
		    If mTrackedObjs.HasKey(hash) Then // set in previous recursive call
		      noRemove= True
		      Dim ti As Introspection.TypeInfo= Introspection.GetType(value)
		      If mAddSpecialTags Then
		        mBuffer.Write kLt+ ti.FullName+ kSp+ kTagIDXml+ kEq+ kQt+ _
		        EncodeHex(Md5(Str(hash)))+ kQt+ kFs+ kGt
		      Else
		        mBuffer.Write kLt+ ti.FullName+ kFs+ kGt
		      End If
		    Else // track this
		      mTrackedObjs.Value(hash)= True
		      ImplAppendObjectXml value
		    End If
		    If Not noRemove Then mTrackedObjs.Remove hash
		  Case 11 // Boolean
		    mBuffer.Write value.StringValue
		  Case 16 // color
		    Dim colr As Color= value.ColorValue
		    Select Case ColorFormat
		    Case ColorFormats.RGBADecimal
		      If addDelim Then mBuffer.Write(kQt)
		      mBuffer.Write Str(colr.Red)+ kCm+ Str(colr.Green)+ kCm+ Str(colr.Blue)+ kCm+ Str(colr.Alpha)
		      If addDelim Then mBuffer.Write(kQt)
		    Case ColorFormats.RGBAHexadecimal
		      Dim red As String= Hex(colr.Red)
		      Dim green As String= Hex(colr.Green)
		      Dim blue As String= Hex(colr.Blue)
		      Dim alpha As String= Hex(colr.Alpha)
		      
		      If Not (red.Len= 1 And green.Len= 1 And blue.Len= 1  And alpha.Len= 1) Then
		        If red.Len= 1 Then red= k0n+ red
		        If green.Len= 1 Then green= k0n+ green
		        If blue.Len= 1 Then blue= k0n+ blue
		        If alpha.Len= 1 Then alpha= k0n+ alpha
		      End If
		      
		      Dim s1 As String= "#"+ red+ green+ blue
		      If colr.Alpha> 0 Then s1= s1+ alpha
		      
		      If addDelim Then mBuffer.Write(kQt)
		      mBuffer.Write s1
		      If addDelim Then mBuffer.Write(kQt)
		    End Select
		  Case 18, 19, 20, 21, 22, 23, 26, 36
		    Break
		  Case 38 // DateTime
		    #if RBVersion> 2019.02
		      Dim dstr As String= value.DateTimeValue.SQLDateTime
		      Dim gmt As Integer
		      If value.DateTimeValue.Timezone Is Nil Then
		        gmt= Timezone.Current.SecondsFromGMT/ 60/ 60* 100
		      Else
		        gmt= value.DateTimeValue.Timezone.SecondsFromGMT/ 60/ 60* 100
		      End If
		      If gmt>= 0 Then dstr= dstr+ "+"+ Str(gmt, "0000") Else dstr= dstr+ Str(gmt, "-0000")
		      If addDelim Then mBuffer.Write(kQt)
		      mBuffer.Write dstr
		      If addDelim Then mBuffer.Write(kQt)
		    #endif
		    
		  Case Else
		    If value.IsArray Then
		      Dim arrayElementType As Integer= value.ArrayElementType
		      If arrayElementType<> 9 Then mBuffer.Write kLt+ kTagArray+ kGt
		      If arrayElementType= 2 Then // integer
		        Dim arr() As Int32= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write kLt+ kTagEntry+ kGt
		          ImplAppendXml arr(i)
		          mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		        Next
		      ElseIf arrayElementType= 3 Then // long integer
		        Dim arr() As Int64= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write kLt+ kTagEntry+ kGt
		          ImplAppendXml arr(i)
		          mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		        Next
		      ElseIf arrayElementType= 4 Then // single
		        Dim arr() As Single= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write kLt+ kTagEntry+ kGt
		          ImplAppendXml arr(i)
		          mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		        Next
		      ElseIf arrayElementType= 5 Then // double
		        Dim arr() As Double= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write kLt+ kTagEntry+ kGt
		          ImplAppendXml arr(i)
		          mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		        Next
		      ElseIf arrayElementType= 6 Then // currency
		        Dim arr() As Currency= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write kLt+ kTagEntry+ kGt
		          ImplAppendXml arr(i)
		          mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		        Next
		      ElseIf arrayElementType= 7 Then // date
		        Dim arr() As Date= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write kLt+ kTagEntry+ kGt
		          ImplAppendXml arr(i)
		          mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		        Next
		      ElseIf arrayElementType= 8 Then // string
		        Dim arr() As String= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write kLt+ kTagEntry+ kGt
		          ImplAppendXml arr(i)
		          mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		        Next
		      ElseIf arrayElementType= 9 And propTypeName.Lowercase= "pair()" Then // pair
		        mBuffer.Write kLt+ kTagArray+ kGt
		        Dim arr() As Pair= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write(kLt+ kTagEntry+ kGt)
		          ImplAppendXml arr(i)
		          mBuffer.Write(kLt+ kFs+ kTagEntry+ kGt)
		        Next
		        mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		      ElseIf arrayElementType= 9 And (propTypeName.Lowercase= "date()" Or propTypeName.Lowercase= "variant()") Then // object
		        mBuffer.Write kLt+ kTagArray+ kGt
		        Dim arr() As Variant= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write(kLt+ kTagEntry+ kGt)
		          ImplAppendXml arr(i)
		          mBuffer.Write(kLt+ kFs+ kTagEntry+ kGt)
		        Next
		        mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		      ElseIf arrayElementType= 9 Then // object
		        Dim arr() As Object= value
		        For i As Integer= 0 To arr.Ubound
		          ImplAppendXml arr(i)
		        Next
		      ElseIf arrayElementType= 11 Then // boolean
		        Dim arr() As Boolean= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write kLt+ kTagEntry+ kGt
		          ImplAppendXml arr(i)
		          mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		        Next
		      ElseIf arrayElementType= 16 Then // color
		        Dim arr() As Color= value
		        For i As Integer= 0 To arr.Ubound
		          mBuffer.Write kLt+ kTagEntry+ kGt
		          ImplAppendXml arr(i)
		          mBuffer.Write kLt+ kFs+ kTagEntry+ kGt
		        Next
		      End If
		      If arrayElementType<> 9 Then mBuffer.Write kLt+ kFs+ kTagArray+ kGt
		    Else
		      Break
		    End If
		  End Select
		End Sub
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h0
		Delegate Function InterfaceAppend(prop As Object, format As String) As String
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h0
		Delegate Function InterfaceLoad(value As String, format As String) As Object
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		 Shared Sub Load(objs() As Object, data As String, ti As Introspection.TypeInfo)
		  Dim json As New JSONItem
		  Dim xml As New XmlDocument
		  #pragma BreakOnExceptions Off
		  Try
		    json.Load data
		  Catch jsonErr As JSONException
		    Try
		      xml.LoadXml data
		    Catch xmlErr As XmlDomException
		      Dim ex As New UnsupportedOperationException
		      ex.Message= "no json or xml data"
		      Raise ex
		    Finally
		      If xml.FirstChild.ChildCount> 0 Then
		        For i As Integer= 0 To xml.FirstChild.ChildCount- 1
		          Dim nodeChild As XmlNode= xml.FirstChild.Child(i)
		          Dim objChild As Object= GetObject(ti)
		          DoLoad objChild, nodeChild
		          objs.Append objChild
		        Next
		      End If
		    End Try
		  Finally
		    If json.IsArray Then
		      For i As Integer= 0 To json.Count- 1
		        Dim nodeChild As JSONItem= json.Child(i)
		        Dim objChild As Object= GetObject(ti)
		        DoLoad objChild, nodeChild
		        objs.Append objChild
		      Next
		    End If
		  End Try
		  #pragma BreakOnExceptions Default
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub Load(obj As Object, data As String)
		  Dim json As New JSONItem
		  Dim xml As New XmlDocument
		  #pragma BreakOnExceptions Off
		  Try
		    json.Load data
		  Catch jsonErr As JSONException
		    Try
		      xml.LoadXml data
		    Catch xmlErr As XmlDomException
		      Dim ex As New UnsupportedOperationException
		      ex.Message= "no json or xml data"
		      Raise ex
		    Finally
		      DoLoad obj, xml.FirstChild
		    End Try
		  Finally
		    DoLoad obj, json
		  End Try
		  #pragma BreakOnExceptions Default
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub RegisterClass(ti As Introspection.TypeInfo, name As String = "")
		  If ti Is Nil Then Return
		  If mRegisteredClasses Is Nil Then mRegisteredClasses= New Dictionary
		  
		  If name= "" Then name= ti.Name
		  
		  mRegisteredClasses.Value(name)= ti
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub RegisterClassInit()
		  #pragma BackgroundTasks False
		  
		  If mRegisteredClassesInit Then Return Else mRegisteredClassesInit= True
		  
		  RegisterClass GetTypeInfo(ArcShape)
		  RegisterClass GetTypeInfo(Collection)
		  RegisterClass GetTypeInfo(CurveShape)
		  RegisterClass GetTypeInfo(Database)
		  RegisterClass GetTypeInfo(DatabaseRecord)
		  RegisterClass GetTypeInfo(Datagram)
		  RegisterClass GetTypeInfo(Date)
		  RegisterClass GetTypeInfo(Dictionary)
		  RegisterClass GetTypeInfo(FigureShape)
		  RegisterClass GetTypeInfo(FileType)
		  RegisterClass GetTypeInfo(Group2D)
		  RegisterClass GetTypeInfo(HTTPSecureSocket)
		  RegisterClass GetTypeInfo(Object2D)
		  RegisterClass GetTypeInfo(OvalShape)
		  RegisterClass GetTypeInfo(Pair)
		  RegisterClass GetTypeInfo(Picture)
		  RegisterClass GetTypeInfo(PixmapShape)
		  RegisterClass GetTypeInfo(Realbasic.Point)
		  RegisterClass GetTypeInfo(Realbasic.Rect)
		  RegisterClass GetTypeInfo(Realbasic.Size)
		  RegisterClass GetTypeInfo(RectShape)
		  RegisterClass GetTypeInfo(RegEx)
		  RegisterClass GetTypeInfo(RoundRectShape)
		  RegisterClass GetTypeInfo(SSLSocket)
		  RegisterClass GetTypeInfo(Serial)
		  RegisterClass GetTypeInfo(SerialPort)
		  RegisterClass GetTypeInfo(StringShape)
		  
		  #if TargetDesktop And False
		    RegisterClass GetTypeInfo(BevelButton)
		    RegisterClass GetTypeInfo(Canvas)
		    RegisterClass GetTypeInfo(Checkbox)
		    RegisterClass GetTypeInfo(ComboBox)
		    RegisterClass GetTypeInfo(Control)
		    RegisterClass GetTypeInfo(DataControl)
		    RegisterClass GetTypeInfo(DisclosureTriangle)
		    RegisterClass GetTypeInfo(HTMLViewer)
		    RegisterClass GetTypeInfo(MoviePlayer)
		    RegisterClass GetTypeInfo(ImageWell)
		    RegisterClass GetTypeInfo(NotePlayer)
		    RegisterClass GetTypeInfo(Oval)
		    RegisterClass GetTypeInfo(Placard)
		    RegisterClass GetTypeInfo(PopupArrow)
		    RegisterClass GetTypeInfo(PopUpMenu)
		    RegisterClass GetTypeInfo(ProgressBar)
		    RegisterClass GetTypeInfo(ProgressWheel)
		    RegisterClass GetTypeInfo(PushButton)
		    RegisterClass GetTypeInfo(RadioButton)
		    RegisterClass GetTypeInfo(RectControl)
		    RegisterClass GetTypeInfo(Rectangle)
		    RegisterClass GetTypeInfo(RoundRectangle)
		    RegisterClass GetTypeInfo(Scrollbar)
		    RegisterClass GetTypeInfo(SegmentedControl)
		    RegisterClass GetTypeInfo(SegmentedControlItem)
		    RegisterClass GetTypeInfo(Separator)
		    RegisterClass GetTypeInfo(Serial)
		    RegisterClass GetTypeInfo(Slider)
		    RegisterClass GetTypeInfo(TextArea)
		    RegisterClass GetTypeInfo(TextField)
		    RegisterClass GetTypeInfo(UpDownArrows)
		  #elseif TargetWeb
		    Break // TODO:
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub RegisterClassRelease()
		  If mRegisteredClasses= Nil Then Return
		  
		  For i As Integer= 0 To mRegisteredClasses.Count- 1
		    Dim key As String= mRegisteredClasses.Key(i)
		    mRegisteredClasses.Value(key)= Nil
		  Next
		  
		  mRegisteredClasses= Nil
		  mRegisteredClassesInit= False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RegisteredClass(name As String) As Boolean
		  If name= "" Then Return False
		  
		  If mRegisteredClasses Is Nil Then mRegisteredClasses= New Dictionary
		  
		  Return mRegisteredClasses.HasKey(name)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RegisteredClassGet(name As String) As Introspection.TypeInfo
		  If name= "" Then Return Nil
		  
		  If mRegisteredClasses Is Nil Then mRegisteredClasses= New Dictionary
		  
		  If mRegisteredClasses.HasKey(name) Then Return mRegisteredClasses.Value(name)
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub RegisterInterfase(name As String, actionAppend As InterfaceAppend, actionLoad As InterfaceLoad)
		  If name= "" Then Return
		  If actionAppend Is Nil Xor actionLoad Is Nil Then Return
		  If mRegisteredClasses Is Nil Then mRegisteredClasses= New Dictionary
		  
		  Dim keyName As String= kInterfasePrefix+ name.Lowercase
		  
		  If actionAppend Is Nil And actionLoad Is Nil Then
		    Try
		      #Pragma BreakOnExceptions Off
		      mRegisteredClasses.Remove keyName+ "_append"
		      mRegisteredClasses.Remove keyName+ "_load"
		      #Pragma BreakOnExceptions Default
		    Catch exc As KeyNotFoundException
		      System.DebugLog CurrentMethodName+ " 'Remove keyName+ ...' keyNotFound!"
		    End Try
		    
		    Return
		  End If
		  
		  mRegisteredClasses.Value(keyName+ "_append")= actionAppend
		  mRegisteredClasses.Value(keyName+ "_load")= actionLoad
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function Repeat(s As String, n As Integer, returnZero As Boolean = False) As String
		  If returnZero And n= 0 Then Return "0"
		  If n<= 0 Then Return ""
		  
		  Dim ret As String
		  
		  For i As Integer= 1 To n
		    ret= ret+ s
		  Next
		  
		  Return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ToFormatSpec(specNum As String) As String
		  If specNum= "" Then Return ""
		  If Not IsNumeric(specNum) Then Return specNum
		  
		  Dim specs() As String= specNum.Split(".")
		  Dim ret() As String
		  
		  For Each spec As String In specs
		    ret.Append Repeat("#", Val(spec), True)
		  Next
		  
		  Return Join(ret, ".") // "-"+
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return ToString(Encodings.UTF8)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString(enc As TextEncoding) As String
		  If enc Is Nil Then enc= Encodings.UTF8
		  
		  mBuffer.Position= 0
		  Return DefineEncoding(mBuffer.Read(mBuffer.Length), enc)
		End Function
	#tag EndMethod


	#tag Note, Name = Release
		
		0.0.250623
		
		* add ToString.Get
		
		0.0.200731
		
		* add 2019r2 dateTime support
		* add interface class properties support
		
		0.0.200428
		
		* chg xml array objects: delete extra tags
		* add TargetDesktop
		
		0.0.200427
		
		* add Contructor("format": "xml", "addSpecialTags": False)
		
		0.0.200115
		
		* initial release
	#tag EndNote


	#tag Property, Flags = &h0
		ColorFormat As ColorFormats = ColorFormats.RGBAHexadecimal
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mAddSpecialTags As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mBuffer As BinaryStream
	#tag EndProperty

	#tag Property, Flags = &h0
		MethodName As String = "ToString"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mFormat As String = "json"
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private Shared mRegisteredClasses As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( Hidden ) Private Shared mRegisteredClassesInit As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTrackedObjs As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return kVersion
			End Get
		#tag EndGetter
		Version As String
	#tag EndComputedProperty


	#tag Constant, Name = k0n, Type = String, Dynamic = False, Default = \"0", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAm, Type = String, Dynamic = False, Default = \"&", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAp, Type = String, Dynamic = False, Default = \"\'", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kBs, Type = String, Dynamic = False, Default = \"\\", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCm, Type = String, Dynamic = False, Default = \"\x2C", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCo, Type = String, Dynamic = False, Default = \":", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kEq, Type = String, Dynamic = False, Default = \"\x3D", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kFrmtFloats, Type = String, Dynamic = False, Default = \"-#################0.0#######", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kFrmtInts, Type = String, Dynamic = False, Default = \"-#################0", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kFs, Type = String, Dynamic = False, Default = \"/", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGt, Type = String, Dynamic = False, Default = \">", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kInterfasePrefix, Type = String, Dynamic = False, Default = \"__interfase__", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kLb, Type = String, Dynamic = False, Default = \"{", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kLk, Type = String, Dynamic = False, Default = \"[", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kLp, Type = String, Dynamic = False, Default = \"(", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kLt, Type = String, Dynamic = False, Default = \"<", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kQt, Type = String, Dynamic = False, Default = \"\"", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kRb, Type = String, Dynamic = False, Default = \"}", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kRk, Type = String, Dynamic = False, Default = \"]", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kRp, Type = String, Dynamic = False, Default = \")", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSp, Type = String, Dynamic = False, Default = \" ", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTagArray, Type = String, Dynamic = False, Default = \"array", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTagData, Type = String, Dynamic = False, Default = \"$Data", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTagDataXml, Type = String, Dynamic = False, Default = \"_.Data", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTagDictionary, Type = String, Dynamic = False, Default = \"dictionary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTagEntry, Type = String, Dynamic = False, Default = \"entry", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTagID, Type = String, Dynamic = False, Default = \"$ID", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTagIDXml, Type = String, Dynamic = False, Default = \"_.ID", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTagItems, Type = String, Dynamic = False, Default = \"$Items", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTagItemsXml, Type = String, Dynamic = False, Default = \"_.Items", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTagJson, Type = String, Dynamic = False, Default = \"json", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTagKey, Type = String, Dynamic = False, Default = \"key", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTagLeft, Type = String, Dynamic = False, Default = \"Left", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTagRight, Type = String, Dynamic = False, Default = \"Right", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTagType, Type = String, Dynamic = False, Default = \"$Type", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTagValue, Type = String, Dynamic = False, Default = \"value", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTagXml, Type = String, Dynamic = False, Default = \"xml", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeBoolean, Type = String, Dynamic = False, Default = \"boolean", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeColor, Type = String, Dynamic = False, Default = \"color", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeCurrency, Type = String, Dynamic = False, Default = \"currency", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeDate, Type = String, Dynamic = False, Default = \"date", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeDateTime, Type = String, Dynamic = False, Default = \"datetime", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeDictionary, Type = String, Dynamic = False, Default = \"dictionary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeDouble, Type = String, Dynamic = False, Default = \"double", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeInt16, Type = String, Dynamic = False, Default = \"int16", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeInt32, Type = String, Dynamic = False, Default = \"int32", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeInt64, Type = String, Dynamic = False, Default = \"int64", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeInt8, Type = String, Dynamic = False, Default = \"int8", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypePair, Type = String, Dynamic = False, Default = \"pair", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypePicture, Type = String, Dynamic = False, Default = \"picture", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeSingle, Type = String, Dynamic = False, Default = \"single", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeString, Type = String, Dynamic = False, Default = \"string", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeUInt16, Type = String, Dynamic = False, Default = \"uint16", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeUInt32, Type = String, Dynamic = False, Default = \"uint32", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeUInt64, Type = String, Dynamic = False, Default = \"uint64", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeUInt8, Type = String, Dynamic = False, Default = \"uint8", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeVariant, Type = String, Dynamic = False, Default = \"variant", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kVersion, Type = String, Dynamic = False, Default = \"0.0.250623", Scope = Private
	#tag EndConstant


	#tag Enum, Name = ColorFormats, Type = Integer, Flags = &h0
		RGBADecimal
		RGBAHexadecimal
	#tag EndEnum


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
			Name="MethodName"
			Group="Behavior"
			InitialValue="ToString"
			Type="String"
			EditorType="MultiLineEditor"
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
		#tag ViewProperty
			Name="Version"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
