Attribute VB_Name = "function_module"
Public strCnn As String  '���ݿ����Ӵ�
Public conODBC As Connection
Public Old_Row As Integer       '�����Ϣ����ǰһ������
Public String_Area As String    '�������
Public Name_Area As String      '��������
Public Num_Archive As Integer   '�ɹ�����
Public Sum_People_Area          'ĳ��������
Public ID_Person As String
Public ByName As String


'���ݿ����Ӷ���

'-----�������ݿ������
Public Sub Sub_ConnectServer()
   '-----------------��SQL Server 2000���Ӵ�
   'strCnn = "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;PWD=sa;Initial Catalog=rc_base;Data Source=mxm"
   '-----------------��SQL Server 2005���Ӵ�
   strCnn = "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=rc_base;Data Source=MXM\SQLEXPRESS"
   Set conODBC = New ADODB.Connection
   conODBC.Open strCnn
End Sub

'=========��������ת���ɵ�����ţ���������ת�������ĵ��������ʽ
Public Sub no_area()
   
   Sub_ConnectServer
   Set rs = New ADODB.Recordset
   rs.CursorType = adOpenStatic
   rs.LockType = adLockOptimistic '
   '-----------��������ű�
   rs.Open "Select * From AreaTab where Name_area='" + Name_Area + "'", conODBC
   num_records = rs.RecordCount
   If num_records = 0 Then
      MsgBox ("û�д˵�����ţ�")
      Exit Sub
   End If
   String_Area = rs!no_area
   rs.Close
   conODBC.Close
End Sub

'========�˲ű�ų��ȼ���: value_num:�����ֵ������string_num������ַ�����ʽ
Public Sub person_ID_tran(value_num, string_num)
    Dim string_max As String

    string_max = "00000"
    len_num = Len(Trim(Str(value_num)))
    string_max = Left(string_max, Len(string_max) - len_num)
    string_num = string_max + Trim(Str(value_num))
End Sub

'=========��ѯĳ��������
Public Sub Sum_People()


    '======��ѯ�������
    no_area
    '=====������˱��
    Sub_ConnectServer
    Set rs = New ADODB.Recordset
    rs.CursorType = adOpenStatic
    rs.LockType = adLockOptimistic '
    '-----------���˲Ż�����Ϣ��
    rs.Open "Select * From BTab where person_ID like '" + String_Area + "%" + "'", conODBC
    num_records = rs.RecordCount
    rs.Close
    Sum_People_Area = num_records + 1
End Sub
