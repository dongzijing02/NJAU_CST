VERSION 5.00
Begin VB.Form insert1 
   Caption         =   "����ѧ��ѡ�κͳɼ���Ϣ"
   ClientHeight    =   2775
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3570
   LinkTopic       =   "Form1"
   ScaleHeight     =   2775
   ScaleWidth      =   3570
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   1920
      TabIndex        =   7
      Top             =   2160
      Width           =   975
   End
   Begin VB.TextBox s_Text 
      Height          =   375
      Left            =   1080
      TabIndex        =   4
      Top             =   240
      Width           =   1800
   End
   Begin VB.TextBox c_Text 
      Height          =   375
      Left            =   1080
      TabIndex        =   3
      Top             =   840
      Width           =   1800
   End
   Begin VB.CommandButton Command1 
      Caption         =   "���"
      Height          =   375
      Left            =   600
      TabIndex        =   2
      Top             =   2160
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
      Left            =   1080
      TabIndex        =   0
      Top             =   1440
      Width           =   1800
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "�κ�"
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
      TabIndex        =   6
      Top             =   960
      Width           =   480
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "ѧ��"
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
      Top             =   300
      Width           =   480
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
      Left            =   480
      TabIndex        =   1
      Top             =   1560
      Width           =   480
   End
End
Attribute VB_Name = "insert1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  Dim cn As ADODB.Connection
  Dim strCnn As String
  Dim sno As String, cno As String
  Dim sc_score As String
    
  '**********��ȡ��¼ѧ��ѧ�ţ��γ̺�
  sno = Trim(s_Text.Text)
  cno = Trim(c_Text.Text)
  sc_score = Trim(score_Text.Text)
  '*********** ����ODBC OLE DB����Դ���Ӵ�
  'strCnn = " DRIVER={SQL SERVER};SERVER=MXM;UID=sa;PWD=sa;DATABASE=jiaoxuedb"
  strCnn = "Provider=SQLOLEDB;UID=sa; PWD=sa;Persist " + _
           "Security Info=false; Initial Catalog=jiaoxuedb"
  '*********** �������Ӷ���cn
  Set cn = New ADODB.Connection
  cn.Open strCnn '********* ����������Դ����������
  '********** ����command����cm
  Dim cm As New ADODB.Command
  cm.ActiveConnection = cn
  '********** ��command�������Ҫִ�е�SQL����: �������Ĳ������
  cm.CommandText = "insert into sc values('" + sno + "','" + cno + "'," + sc_score + ")"
  '********** ��command����Ҫִ�е�SQL��������ͣ�SQL�ı�
  cm.CommandType = adCmdText
  cm.CommandTimeout = 15
  cn.Errors.Clear '��մ������
  On Error GoTo Error11
  cm.Execute '********** ִ�в������е�command����
Error11:
 ' If cn.Errors.Count = 0 Then
     MsgBox ("�ɹ��������ݣ�")
  'Else
     'MsgBox ("��������ʧ�ܣ�")
  'End If
  cn.Close  '�ر����Ӷ���cn
  Set cn = Nothing '�ͷ�cn����
End Sub

Private Sub Command2_Click()
  Unload Me
End Sub

Private Sub Form_Load()
   Me.Show
End Sub
