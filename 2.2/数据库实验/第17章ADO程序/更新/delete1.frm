VERSION 5.00
Begin VB.Form delete1 
   Caption         =   "ɾ��ѧ��ѡ����Ϣ"
   ClientHeight    =   2220
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3570
   LinkTopic       =   "Form1"
   ScaleHeight     =   2220
   ScaleWidth      =   3570
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   1920
      TabIndex        =   5
      Top             =   1560
      Width           =   975
   End
   Begin VB.TextBox s_Text 
      Height          =   375
      Left            =   1080
      TabIndex        =   2
      Top             =   240
      Width           =   1800
   End
   Begin VB.TextBox c_Text 
      Height          =   375
      Left            =   1080
      TabIndex        =   1
      Top             =   840
      Width           =   1800
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ɾ��"
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   1560
      Width           =   975
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
      TabIndex        =   4
      Top             =   900
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
      TabIndex        =   3
      Top             =   300
      Width           =   480
   End
End
Attribute VB_Name = "delete1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  Dim cn As ADODB.Connection
  Dim strCnn As String
  Dim sno As String, cno As String
    
  '**********��ȡ��¼ѧ��ѧ�ţ��γ̺�
  sno = Trim(s_Text.Text)
  cno = Trim(c_Text.Text)
  '***********  ʹ�� MS SQL Server OLD DB����Դ����
  strCnn = "Provider=SQLOLEDB;UID=sa; PWD=sa;Persist " + _
           "Security Info=false; Initial Catalog=jiaoxuedb"
  '*********** �������Ӷ���cn
  Set cn = New ADODB.Connection
  cn.Open strCnn '********* ����������Դ����������
  '********** ����command����cm
  Dim cm As New ADODB.Command
  cm.ActiveConnection = cn
  '********** ��command�������Ҫִ�е�SQL����: �������Ĵ洢����
  cn.Errors.Clear '��մ������
  On Error GoTo Error11
  cm.CommandText = "delete from sc where sno='" + sno + "' and cno='" + cno + "'"
  '********** ��command����Ҫִ�е�SQL��������ͣ�SQL�ı�
  cm.CommandType = adCmdText
  cm.Execute recordsaffected, , adCmdText  '********** ִ�в������е�command����
  If recordsaffected <> 0 Then
     MsgBox ("ɾ��ѡ�μ�¼�ɹ���")
  Else
     MsgBox ("ɾ��ѡ�μ�¼�ɹ���")  'ʧ��
  End If
  cn.Close  '�ر����Ӷ���cn
  Set cn = Nothing '�ͷ�cn����
  Exit Sub
Error11:
  MsgBox ("ɾ��ѡ�μ�¼�ɹ���") 'ʧ��
  cn.Close  '�ر����Ӷ���cn
  Set cn = Nothing '�ͷ�cn����
End Sub

Private Sub Command2_Click()
  Unload Me
End Sub

Private Sub Form_Load()
  Me.Show
  
End Sub
