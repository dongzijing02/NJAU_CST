VERSION 5.00
Begin VB.Form query2 
   Caption         =   "��ѯѧ���ɼ�"
   ClientHeight    =   3000
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4530
   LinkTopic       =   "Form1"
   ScaleHeight     =   3000
   ScaleWidth      =   4530
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "����"
      Height          =   375
      Left            =   2880
      TabIndex        =   7
      Top             =   2280
      Width           =   975
   End
   Begin VB.TextBox s_Text 
      Height          =   375
      Left            =   1560
      TabIndex        =   4
      Top             =   360
      Width           =   2295
   End
   Begin VB.TextBox c_Text 
      Height          =   375
      Left            =   1560
      TabIndex        =   3
      Top             =   960
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��ѯ"
      Height          =   375
      Left            =   840
      TabIndex        =   2
      Top             =   2280
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
      Left            =   1560
      TabIndex        =   0
      Top             =   1560
      Width           =   2295
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "�γ���"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   720
      TabIndex        =   6
      Top             =   1080
      Width           =   720
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "ѧ������"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   480
      TabIndex        =   5
      Top             =   420
      Width           =   960
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "�ɼ�"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   960
      TabIndex        =   1
      Top             =   1680
      Width           =   480
   End
End
Attribute VB_Name = "query2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  Dim cn As ADODB.Connection
  Dim rs As ADODB.Recordset
  Dim strCnn As String
  Dim sname As String, cname As String
  
  '**********��ȡѧ���������γ���
  sname = Trim(s_Text.Text)
  cname = Trim(c_Text.Text)
  '*********** ����ODBC OLE DB����Դ���Ӵ�
  strCnn = " DRIVER={SQL SERVER};SERVER=zhangbenshan;UID=sa;PWD=sa;DATABASE=jiaoxuedb"
  '*********** �������Ӷ���cn
  Set cn = New ADODB.Connection
  '********* ����������Դ����������
  cn.Open strCnn
  '********** ����command����cm
  Dim cm As New ADODB.Command
  cm.ActiveConnection = cn
  '********** ��command�������Ҫִ�е� ������ ��SQL����
  cm.CommandText = "select score from student,sc,course where student.sno=sc.sno and " + _
    "sc.cno = course.cno and student.sname='" + sname + "' and course.cname='" + cname + "'"
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

Private Sub Command2_Click()
  Unload Me
End Sub
