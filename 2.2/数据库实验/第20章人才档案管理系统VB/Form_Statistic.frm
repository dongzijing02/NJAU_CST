VERSION 5.00
Begin VB.Form Form_Statistic 
   Caption         =   "ר���˲Ź���ϵͳ"
   ClientHeight    =   5790
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9420
   LinkTopic       =   "Form1"
   ScaleHeight     =   5790
   ScaleWidth      =   9420
   StartUpPosition =   3  '����ȱʡ
   Begin VB.PictureBox Picture1 
      Height          =   4215
      Left            =   360
      ScaleHeight     =   4155
      ScaleWidth      =   8595
      TabIndex        =   0
      Top             =   1080
      Width           =   8655
      Begin VB.CommandButton Command1 
         Caption         =   "����"
         Height          =   375
         Left            =   6240
         TabIndex        =   9
         Top             =   720
         Width           =   1215
      End
      Begin VB.ComboBox Combo3 
         DataField       =   "Name_area"
         DataMember      =   "name_area"
         DataSource      =   "select name_area from areatab"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         ItemData        =   "Form_Statistic.frx":0000
         Left            =   2040
         List            =   "Form_Statistic.frx":0010
         TabIndex        =   7
         Text            =   "�ܺ�"
         Top             =   2280
         Width           =   2895
      End
      Begin VB.ComboBox Combo2 
         DataField       =   "Name_area"
         DataMember      =   "name_area"
         DataSource      =   "select name_area from areatab"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         ItemData        =   "Form_Statistic.frx":0030
         Left            =   2040
         List            =   "Form_Statistic.frx":0032
         TabIndex        =   5
         Text            =   "����"
         Top             =   1560
         Width           =   2895
      End
      Begin VB.CommandButton Command2 
         Caption         =   "�˳�"
         Height          =   375
         Left            =   6240
         TabIndex        =   2
         Top             =   1440
         Width           =   1215
      End
      Begin VB.ComboBox Combo1 
         DataField       =   "Name_area"
         DataMember      =   "name_area"
         DataSource      =   "select name_area from areatab"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         ItemData        =   "Form_Statistic.frx":0034
         Left            =   2040
         List            =   "Form_Statistic.frx":0056
         TabIndex        =   1
         Text            =   "����"
         Top             =   795
         Width           =   2895
      End
      Begin VB.Label Label6 
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "����"
            Size            =   15
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2280
         TabIndex        =   11
         Top             =   3240
         Width           =   2775
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "ͳ�ƽ��"
         BeginProperty Font 
            Name            =   "����"
            Size            =   15
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   300
         Left            =   840
         TabIndex        =   10
         Top             =   3360
         Width           =   1200
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "ͳ�Ʒ�ʽ"
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00400000&
         Height          =   240
         Left            =   960
         TabIndex        =   8
         Top             =   2325
         Width           =   960
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "ͳ������"
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00400000&
         Height          =   240
         Left            =   960
         TabIndex        =   6
         Top             =   1605
         Width           =   960
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "ͳ����Ŀ"
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00400000&
         Height          =   240
         Left            =   960
         TabIndex        =   3
         Top             =   840
         Width           =   960
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ͳ����Ϣ����"
      BeginProperty Font 
         Name            =   "����"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   480
      Left            =   3120
      TabIndex        =   4
      Top             =   480
      Width           =   2970
   End
End
Attribute VB_Name = "Form_Statistic"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
   Unload Me
End Sub

