VERSION 5.00
Begin VB.Form Form_main 
   Caption         =   "ר���˲ŵ�������ϵͳ"
   ClientHeight    =   6450
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12960
   LinkTopic       =   "Form1"
   ScaleHeight     =   6450
   ScaleWidth      =   12960
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Height          =   495
      Left            =   0
      ScaleHeight     =   435
      ScaleWidth      =   15435
      TabIndex        =   0
      Top             =   -360
      Width           =   15500
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "2005��1��"
      BeginProperty Font 
         Name            =   "����_GB2312"
         Size            =   15
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   300
      Left            =   6840
      TabIndex        =   5
      Top             =   6000
      Width           =   1350
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�˲ŵ�����Ϣ����ϵͳ"
      BeginProperty Font 
         Name            =   "����"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   840
      Left            =   3315
      TabIndex        =   4
      Top             =   1980
      Width           =   8415
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�˲ŵ�����Ϣ����ϵͳ"
      BeginProperty Font 
         Name            =   "����"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008080&
      Height          =   840
      Left            =   3360
      TabIndex        =   3
      Top             =   1920
      Width           =   8415
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "�汾    V 1.0"
      BeginProperty Font 
         Name            =   "��Բ"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   300
      Left            =   6510
      TabIndex        =   2
      Top             =   3720
      Width           =   2145
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "����  ���ϴ�ѧ̫��ѧԺ    �����ϵ"
      BeginProperty Font 
         Name            =   "����_GB2312"
         Size            =   15
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   300
      Left            =   5160
      TabIndex        =   1
      Top             =   4800
      Width           =   5100
   End
   Begin VB.Menu Set_system 
      Caption         =   "   ϵͳ&S"
      NegotiatePosition=   2  'Middle
      Begin VB.Menu Set_NameUser 
         Caption         =   "�����û��ʺ�"
      End
      Begin VB.Menu Query_Nameuser 
         Caption         =   "��ѯ�û��ʺ�"
      End
      Begin VB.Menu x6 
         Caption         =   "-"
      End
      Begin VB.Menu Set_AreaNo_menu 
         Caption         =   "���õ������"
      End
      Begin VB.Menu Query_AreaNo_Menu 
         Caption         =   "��ѯ�������"
      End
      Begin VB.Menu x9 
         Caption         =   "-"
      End
   End
   Begin VB.Menu Query 
      Caption         =   "   ��ѯ&Q"
      Begin VB.Menu ViewAll 
         Caption         =   "���"
         Shortcut        =   ^V
      End
      Begin VB.Menu x1 
         Caption         =   "-"
      End
      Begin VB.Menu ByName 
         Caption         =   "������"
      End
      Begin VB.Menu ByNumber 
         Caption         =   "�����"
      End
      Begin VB.Menu ByTechnicalityTitle 
         Caption         =   "��ְ��"
      End
      Begin VB.Menu x2 
         Caption         =   "-"
      End
      Begin VB.Menu ByArea 
         Caption         =   "������"
      End
      Begin VB.Menu x5 
         Caption         =   "-"
      End
      Begin VB.Menu MoreSelect 
         Caption         =   "��������"
      End
   End
   Begin VB.Menu Manager 
      Caption         =   "   ����&M"
      Begin VB.Menu In_information 
         Caption         =   "�Ǽ�"
      End
      Begin VB.Menu x3 
         Caption         =   "-"
      End
      Begin VB.Menu Modify 
         Caption         =   "�޸�"
      End
      Begin VB.Menu x4 
         Caption         =   "-"
      End
      Begin VB.Menu Delele 
         Caption         =   "ɾ��"
      End
   End
   Begin VB.Menu Tool 
      Caption         =   "   ����&T"
      Begin VB.Menu Statistic 
         Caption         =   "ͳ��"
      End
      Begin VB.Menu x7 
         Caption         =   "-"
      End
      Begin VB.Menu Report 
         Caption         =   "����"
      End
   End
   Begin VB.Menu Help 
      Caption         =   "   ����&H"
      Begin VB.Menu Notes_Option 
         Caption         =   "����˵��"
      End
      Begin VB.Menu x8 
         Caption         =   "-"
      End
      Begin VB.Menu About 
         Caption         =   "����"
      End
   End
   Begin VB.Menu Quit 
      Caption         =   "   �˳�&U"
   End
End
Attribute VB_Name = "Form_main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub ByName_Click()
  Load Query_ByName_1
End Sub

Private Sub Form_Load()
   Me.Show
End Sub

Private Sub In_information_Click()
  Load input_form
End Sub


Private Sub Modify_Click()
   Load Update_Form_1
   
End Sub

Private Sub MoreSelect_Click()
  Load Query_Info_MoreCondition
End Sub

Private Sub Query_AreaNo_Menu_Click()
    Load Query_AreaNo
End Sub

Private Sub Quit_Click()
  Unload Me
End Sub


Private Sub Set_AreaNo_menu_Click()
   Load Set_AreaNo
End Sub

Private Sub ViewAll_Click()
   Load view_all
End Sub
