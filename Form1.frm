VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Demo Form"
   ClientHeight    =   2040
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6570
   LinkTopic       =   "Form1"
   ScaleHeight     =   2040
   ScaleWidth      =   6570
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "text to uc"
      Height          =   405
      Left            =   5220
      TabIndex        =   5
      Top             =   1380
      Width           =   1035
   End
   Begin VB.CommandButton Command1 
      Caption         =   "uc to text"
      Height          =   405
      Left            =   3885
      TabIndex        =   4
      Top             =   1365
      Width           =   1065
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   855
      TabIndex        =   3
      Top             =   1380
      Width           =   2910
   End
   Begin Project1.ucTextbox ucTextbox3 
      Height          =   345
      Left            =   285
      TabIndex        =   2
      Top             =   900
      Width           =   5250
      _ExtentX        =   9260
      _ExtentY        =   609
      Caption         =   "Address"
      BorderColor     =   16711680
      TextBackColor   =   16777152
      CaptionColor    =   12582912
   End
   Begin Project1.ucTextbox ucTextbox2 
      Height          =   345
      Left            =   285
      TabIndex        =   1
      Top             =   495
      Width           =   5250
      _ExtentX        =   9260
      _ExtentY        =   609
      Caption         =   "Name"
      BorderColor     =   49152
      TextBackColor   =   12648384
      CaptionColor    =   32768
   End
   Begin Project1.ucTextbox ucTextbox1 
      Height          =   345
      Left            =   300
      TabIndex        =   0
      Top             =   105
      Width           =   5220
      _ExtentX        =   9208
      _ExtentY        =   609
      Caption         =   "ucTextbox1"
      BorderColor     =   255
      TextBackColor   =   12632319
      Text            =   "This is a sample of text"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
Text1.Text = ucTextbox1.Text
End Sub

Private Sub Command2_Click()
   ucTextbox3.Text = Text1.Text
End Sub

Private Sub Form_Load()
ucTextbox2.Text = "A sample of text from code"
End Sub
