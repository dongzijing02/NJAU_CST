VERSION 5.00
Begin VB.Form update2 
   Caption         =   "���½�ʦ�ο���Ϣ"
   ClientHeight    =   2685
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3630
   LinkTopic       =   "Form1"
   ScaleHeight     =   2685
   ScaleWidth      =   3630
   StartUpPosition =   3  '����ȱʡ
   Begin VB.TextBox nc_Text 
      Height          =   375
      Left            =   1320
      TabIndex        =   6
      Top             =   1440
      Width           =   1800
   End
   Begin VB.CommandButton Command2 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   2040
      TabIndex        =   5
      Top             =   2160
      Width           =   975
   End
   Begin VB.TextBox t_Text 
      Height          =   375
      Left            =   1320
      TabIndex        =   2
      Top             =   240
      Width           =   1800
   End
   Begin VB.TextBox dc_Text 
      Height          =   375
      Left            =   1320
      TabIndex        =   1
      Top             =   840
      Width           =   1800
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Top             =   2160
      Width           =   975
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "�¿κ�"
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
      TabIndex        =   7
      Top             =   1560
      Width           =   720
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "�ɿκ�"
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
      Top             =   960
      Width           =   720
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "��ʦ��"
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
      Top             =   360
      Width           =   960
   End
End
Attribute VB_Name = "update2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  Dim cn As ADODB.Connection
  Dim strCnn As String, strSQL As String
  Dim tno As String, c_old As String, c_new As String
  Dim id As Integer
  '**********��ȡ���޸ļ�¼�Ľ�ʦ�źͿγ̺�
  tno = Trim(t_Text.Text)
  c_old = Trim(dc_Text.Text)
  c_new = Trim(nc_Text.Text)
  '*********** ����ODBC OLE DB����Դ���Ӵ�
  strCnn = " DRIVER={SQL SERVER};SERVER=MXM;UID=sa;PWD=sa;DATABASE=jiaoxuedb"
  '*********** �������Ӷ���cn
  Set cn = New ADODB.Connection
  '********* ����������Դ����������
  cn.Open strCnn
  '********** ���ò�ѯSQL�����������t_name
  strSQL = "select cno from TC where tno='" + tno + "' and cno='" + c_old + "'"
  '********** ����recordset����
  Set rs = New ADODB.Recordset
  rs.CursorType = adOpenKeyset '�����α�����Ϊ�����α�
  rs.CursorLocation = adUseClient '�����α�λ���ڿͻ���
  rs.LockType = adLockOptimistic '����������
  cn.Errors.Clear '��մ������
  On Error GoTo Error11  '������������ת����䣺Error11
  rs.Open strSQL, cn, , , adCmdText
  If rs.EOF = False Then
     rs!cno = c_new '���µ�ǰ�γ̺�
     id = MsgBox("�ɹ����¿γ̺����ݣ�", vbOKOnly, "���½�ʦ�ڿ���Ϣ")
     Set rs = Nothing   '�ͷ�recordset����
     cn.Close  '�ر����Ӷ���cn
     Set cn = Nothing '�ͷ�connection����
     Exit Sub
  End If
Error11:
  id = MsgBox("��������ʧ�ܣ�", vbOKOnly, "�����ڿ���Ϣ")
  Set rs = Nothing   '�ͷ�recordset����
  cn.Close  '�ر����Ӷ���cn
  Set cn = Nothing '�ͷ�connection����
End Sub
Private Sub Command2_Click()
  End
End Sub
