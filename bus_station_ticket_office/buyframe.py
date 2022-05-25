from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_buy_frame(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(400, 300)
        self.lastnamelab = QtWidgets.QLabel(Dialog)
        self.lastnamelab.setGeometry(QtCore.QRect(60, 40, 81, 16))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.lastnamelab.setFont(font)
        self.lastnamelab.setObjectName("lastnamelab")
        self.firstnamelab = QtWidgets.QLabel(Dialog)
        self.firstnamelab.setGeometry(QtCore.QRect(60, 60, 81, 16))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.firstnamelab.setFont(font)
        self.firstnamelab.setObjectName("firstnamelab")
        self.middlenamelab = QtWidgets.QLabel(Dialog)
        self.middlenamelab.setGeometry(QtCore.QRect(60, 80, 81, 16))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.middlenamelab.setFont(font)
        self.middlenamelab.setObjectName("middlenamelab")
        self.idroutelab = QtWidgets.QLabel(Dialog)
        self.idroutelab.setGeometry(QtCore.QRect(60, 100, 81, 21))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.idroutelab.setFont(font)
        self.idroutelab.setObjectName("idroutelab")
        self.buybut = QtWidgets.QPushButton(Dialog)
        self.buybut.setGeometry(QtCore.QRect(80, 190, 75, 23))
        self.buybut.setObjectName("buybut")
        self.givebut = QtWidgets.QPushButton(Dialog)
        self.givebut.setGeometry(QtCore.QRect(240, 190, 75, 23))
        self.givebut.setObjectName("givebut")
        self.groupBox = QtWidgets.QGroupBox(Dialog)
        self.groupBox.setGeometry(QtCore.QRect(40, 20, 311, 111))
        self.groupBox.setObjectName("groupBox")
        self.linef = QtWidgets.QLineEdit(self.groupBox)
        self.linef.setGeometry(QtCore.QRect(100, 20, 181, 20))
        self.linef.setText("")
        self.linef.setObjectName("linef")
        self.linel = QtWidgets.QLineEdit(self.groupBox)
        self.linel.setGeometry(QtCore.QRect(100, 40, 181, 20))
        self.linel.setText("")
        self.linel.setObjectName("linel")
        self.linem = QtWidgets.QLineEdit(self.groupBox)
        self.linem.setGeometry(QtCore.QRect(100, 60, 181, 20))
        self.linem.setText("")
        self.linem.setObjectName("linem")
        self.liner = QtWidgets.QLineEdit(self.groupBox)
        self.liner.setGeometry(QtCore.QRect(100, 80, 181, 20))
        self.liner.setText("")
        self.liner.setObjectName("liner")
        self.groupBox.raise_()
        self.lastnamelab.raise_()
        self.firstnamelab.raise_()
        self.middlenamelab.raise_()
        self.idroutelab.raise_()
        self.buybut.raise_()
        self.givebut.raise_()

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Продажа и возврат билетов"))
        self.lastnamelab.setText(_translate("Dialog", "Фамилия:"))
        self.firstnamelab.setText(_translate("Dialog", "Имя:"))
        self.middlenamelab.setText(_translate("Dialog", "Отчество:"))
        self.idroutelab.setText(_translate("Dialog", "Id рейса:"))
        self.buybut.setText(_translate("Dialog", "Продать"))
        self.givebut.setText(_translate("Dialog", "Возврат"))
        self.groupBox.setTitle(_translate("Dialog", "Пассажир"))

