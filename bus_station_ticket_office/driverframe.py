from PyQt5 import QtCore, QtGui, QtWidgets
import pyodbc

class Ui_driver_frame(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(392, 291)
        self.driverlab = QtWidgets.QLabel(Dialog)
        self.driverlab.setGeometry(QtCore.QRect(130, 10, 181, 51))
        font = QtGui.QFont()
        font.setPointSize(20)
        font.setBold(True)
        font.setWeight(75)
        self.driverlab.setFont(font)
        self.driverlab.setObjectName("driverlab")
        self.groupBox = QtWidgets.QGroupBox(Dialog)
        self.groupBox.setGeometry(QtCore.QRect(0, 0, 391, 61))
        self.groupBox.setTitle("")
        self.groupBox.setObjectName("groupBox")
        self.tabledriver = QtWidgets.QTableWidget(Dialog)
        self.tabledriver.setGeometry(QtCore.QRect(0, 60, 391, 231))
        self.tabledriver.setObjectName("tabledriver")
        self.tabledriver.setColumnCount(7)
        self.tabledriver.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tabledriver.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tabledriver.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        self.tabledriver.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        self.tabledriver.setHorizontalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        self.tabledriver.setHorizontalHeaderItem(4, item)
        item = QtWidgets.QTableWidgetItem()
        self.tabledriver.setHorizontalHeaderItem(5, item)
        item = QtWidgets.QTableWidgetItem()
        self.tabledriver.setHorizontalHeaderItem(6, item)

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

        connection = pyodbc.connect('Driver={SQL Server};' 'Server=VLADPC;' 'Database=bus_station_database_04_04_2022;' 'Trusted_connection=yes;')
        cursor = connection.cursor()
        cursor.execute('SELECT * FROM driver')
        self.tabledriver.setRowCount(0)
        for row_number, row_data in enumerate(cursor):
            self.tabledriver.insertRow(row_number)
            for colum_number, data in enumerate(row_data):
                self.tabledriver.setItem(row_number, colum_number, QtWidgets.QTableWidgetItem(str(data)))
        connection.commit()

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Водители"))
        self.driverlab.setText(_translate("Dialog", "Водители"))
        item = self.tabledriver.horizontalHeaderItem(0)
        item.setText(_translate("Dialog", "Id Водителя"))
        item = self.tabledriver.horizontalHeaderItem(1)
        item.setText(_translate("Dialog", "Имя"))
        item = self.tabledriver.horizontalHeaderItem(2)
        item.setText(_translate("Dialog", "Фамилия"))
        item = self.tabledriver.horizontalHeaderItem(3)
        item.setText(_translate("Dialog", "Отчество"))
        item = self.tabledriver.horizontalHeaderItem(4)
        item.setText(_translate("Dialog", "День рождения"))
        item = self.tabledriver.horizontalHeaderItem(5)
        item.setText(_translate("Dialog", "Возраст"))
        item = self.tabledriver.horizontalHeaderItem(6)
        item.setText(_translate("Dialog", "Паспортные данные"))


