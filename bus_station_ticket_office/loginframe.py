from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(404, 252)
        self.label = QtWidgets.QLabel(Dialog)
        self.label.setGeometry(QtCore.QRect(160, 20, 141, 41))
        font = QtGui.QFont()
        font.setPointSize(20)
        font.setBold(True)
        font.setWeight(75)
        self.label.setFont(font)
        self.label.setObjectName("label")
        self.log1 = QtWidgets.QLabel(Dialog)
        self.log1.setGeometry(QtCore.QRect(120, 90, 51, 16))
        self.log1.setObjectName("log1")
        self.log2 = QtWidgets.QLabel(Dialog)
        self.log2.setGeometry(QtCore.QRect(120, 110, 61, 21))
        self.log2.setObjectName("log2")
        self.login_EDIT = QtWidgets.QLineEdit(Dialog)
        self.login_EDIT.setGeometry(QtCore.QRect(170, 90, 113, 20))
        self.login_EDIT.setObjectName("login_EDIT")
        self.password_EDIT = QtWidgets.QLineEdit(Dialog)
        self.password_EDIT.setGeometry(QtCore.QRect(170, 110, 113, 20))
        self.password_EDIT.setObjectName("password_EDIT")
        self.startbutton = QtWidgets.QPushButton(Dialog)
        self.startbutton.setGeometry(QtCore.QRect(160, 150, 75, 23))
        self.startbutton.setObjectName("startbutton")

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Вход"))
        self.label.setText(_translate("Dialog", "Вход"))
        self.log1.setText(_translate("Dialog", "Логин:"))
        self.log2.setText(_translate("Dialog", "Пароль:"))
        self.startbutton.setText(_translate("Dialog", "Войти"))
