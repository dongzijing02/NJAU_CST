VERSION 5.00
Begin VB.Form insert2 
   Caption         =   "�����ʦ�ο���Ϣ"
   ClientHeight    =   2055
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3270
   LinkTopic       =   "Form1"
   ScaleHeight     =   2055
   ScaleWidth      =   3270
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   1800
      TabIndex        =   5
      Top             =   1560
      Width           =   975
   End
   Begin VB.TextBox t_Text 
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
      Caption         =   "���"
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Top             =   1560
      Width           =   975
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "�γ̺�"
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
      Left            =   240
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
      Left            =   240
      TabIndex        =   3
      Top             =   300
      Width           =   960
   End
End
Attribute VB_Name = "insert2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  Dim cn As ADODB.Connection
  Dim strCnn As String, strSQL As String
  Dim tno As String, cno As String
  Dim id
  '**********��ȡ�������¼�Ľ�ʦ�źͿγ̺�
  tno = Trim(t_Text.Text)
  cno = Trim(c_Text.Text)
  '*********** ����ODBC OLE DB����Դ���Ӵ�
  strCnn = " DRIVER={SQL SERVER};SERVER=MXM;UID=sa;PWD=sa;DATABASE=jiaoxuedb"
  '*********** �������Ӷ���cn
  Set cn = New ADODB.Connection
  '********* ����������Դ����������
  cn.Open strCnn
  '********** ���ò�ѯSQL�����������t_name
  strSQL = "select * from Tc"
  '********** ����recordset����
  Set rs = New ADODB.Recordset
  rs.CursorType = adOpenDynamic '�����α�����Ϊ��̬
  rs.CursorLocation = adUseClient '�����α�λ���ڿͻ���
  rs.LockType = adOpenDynamic
  cn.Errors.Clear '��մ������
  On Error GoTo Error11  '������������ת����䣺Error11
  rs.Open strSQL, cn, , , adCmdText
  rs.AddNew '��rs�����в���һ����
  rs!tno = tno '����������һ���ֶ�tno
  rs!cno = cno '������������һ���ֶ�cno
  rs.Update '********** �ύ��rs�Ĳ���
Error11:
  If cn.Errors.Count = 0 Then '�ж��Ƿ��д�����
     id = MsgBox("�ɹ��������ݣ�", vbOKOnly, "�����ʦ�ڿ���Ϣ")
  Else
     id = MsgBox("��������ʧ�ܣ�", vbOKOnly, "�����ʦ�ڿ���Ϣ")
  End If
  Set rs = Nothing   '�ͷ�recordset����
  cn.Close  '�ر����Ӷ���cn
  Set cn = Nothing '�ͷ�connection����
End Sub
Private Sub Command2_Click()
  Unload Me
End Sub
