VERSION 5.00
Begin VB.Form query3 
   Caption         =   "��ѯ��ʦ��ѩ���ογ�"
   ClientHeight    =   2805
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3705
   LinkTopic       =   "Form1"
   ScaleHeight     =   2805
   ScaleWidth      =   3705
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   2280
      TabIndex        =   3
      Top             =   2160
      Width           =   975
   End
   Begin VB.ListBox List1 
      Height          =   1140
      Left            =   600
      TabIndex        =   2
      Top             =   720
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��ѯ"
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   2160
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "��ʦ��ѩ���ογ�"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   840
      TabIndex        =   0
      Top             =   360
      Width           =   2175
   End
End
Attribute VB_Name = "query3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  Dim cn As ADODB.Connection
  Dim rs As ADODB.Recordset
  Dim strCnn As String
  
  '*********** ����ODBC OLE DB����Դ���Ӵ�
  strCnn = " DRIVER={SQL SERVER};SERVER=MXM;UID=sa;PWD=sa;DATABASE=jiaoxuedb"
  '*********** �������Ӷ���cn
  Set cn = New ADODB.Connection
  '********* ����������Դ����������
  cn.Open strCnn
  '********** ���ò�ѯSQL���
  strSQL = "select cname from tc,teacher,course where teacher.tno=tc.tno and " + _
        "tc.cno=course.cno and teacher.tname='��ѩ'"
  '********** ����recordset����
  Set rs = New ADODB.Recordset
  rs.CursorType = adOpenStatic '�����α�����Ϊ��̬
  rs.CursorLocation = adUseClient '�����α�λ���ڿͻ���
  Set rs = cn.Execute(strSQL) '�����Ӷ���cn��ִ��SQL����strSQL�����صļ�¼������rs
  Do While rs.EOF = False '�ж�ָ���Ƿ�ָ�����
     List1.AddItem rs!cname  '��rs������ȡ���γ����������б������ʾ����
     rs.MoveNext '��¼ָ������һ����¼
  Loop
  Set rs = Nothing   '�ͷ�recordset����
  cn.Close  '�ر����Ӷ���cn
  Set cn = Nothing '�ͷ�connection����
End Sub

Private Sub Command2_Click()
  Unload Me
End Sub
