VERSION 5.00
Begin VB.Form query1 
   Caption         =   "��ѯ�ű�ɼ�"
   ClientHeight    =   2400
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3705
   LinkTopic       =   "Form1"
   ScaleHeight     =   2400
   ScaleWidth      =   3705
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "��ѯ"
      Height          =   375
      Left            =   1320
      TabIndex        =   2
      Top             =   1680
      Width           =   975
   End
   Begin VB.TextBox score_Text 
      BeginProperty Font 
         Name            =   "����"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   600
      TabIndex        =   0
      Top             =   840
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "�ű�ļ���������ɼ�"
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
      Left            =   600
      TabIndex        =   1
      Top             =   480
      Width           =   2415
   End
End
Attribute VB_Name = "query1"
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
  '********** ����command����cm
  Dim cm As New ADODB.Command
  cm.ActiveConnection = cn
  '********** ��command�������Ҫִ�е�SQL����
  cm.CommandText = "select score from student,sc,course where student.sno=sc.sno and " + _
        "sc.cno = course.cno and student.sname='�ű�' and course.cname='���������'"
  '********** ��command����Ҫִ�е�SQL��������ͣ�SQL�ı�
  cm.CommandType = adCmdText
  cm.CommandTimeout = 15
  '********** ִ��command����
  Set rs = cm.Execute(1, 1, 1)
  If rs.EOF = False Then  '******�����صļ�¼��Ϊ��
     score_Text.Text = Str(rs!score) '��rs������ȡ���ɼ�ֵ�������ı�������ʾ����
  End If
  Set rs = Nothing   '�ͷ�rs����
  cn.Close  '�ر����Ӷ���cn
  Set cn = Nothing '�ͷ�cn����
End Sub

