from PyQt5 import QtCore, QtGui, QtWidgets
import pyodbc

class Ui_ticket_frame(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(391, 291)
        self.groupBox = QtWidgets.QGroupBox(Dialog)
        self.groupBox.setGeometry(QtCore.QRect(0, 0, 391, 51))
        self.groupBox.setTitle("")
        self.groupBox.setObjectName("groupBox")
        self.ticketlab = QtWidgets.QLabel(self.groupBox)
        self.ticketlab.setGeometry(QtCore.QRect(140, 10, 161, 31))
        font = QtGui.QFont()
        font.setPointSize(20)
        font.setBold(True)
        font.setWeight(75)
        self.ticketlab.setFont(font)
        self.ticketlab.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.ticketlab.setObjectName("ticketlab")
        self.tableticket = QtWidgets.QTableWidget(Dialog)
        self.tableticket.setGeometry(QtCore.QRect(0, 50, 391, 241))
        self.tableticket.setObjectName("tableticket")
        self.tableticket.setColumnCount(6)
        self.tableticket.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tableticket.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableticket.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableticket.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableticket.setHorizontalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableticket.setHorizontalHeaderItem(4, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableticket.setHorizontalHeaderItem(5, item)

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

        connection = pyodbc.connect('Driver={SQL Server};' 'Server=VLADPC;' 'Database=bus_station_database_04_04_2022;' 'Trusted_connection=yes;')
        cursor = connection.cursor()
        cursor.execute('SELECT * FROM ticket')
        self.tableticket.setRowCount(0)
        for row_number, row_data in enumerate(cursor):
            self.tableticket.insertRow(row_number)
            for colum_number, data in enumerate(row_data):
                self.tableticket.setItem(row_number, colum_number, QtWidgets.QTableWidgetItem(str(data)))
        connection.commit()

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Билеты"))
        self.ticketlab.setText(_translate("Dialog", "Билеты"))
        item = self.tableticket.horizontalHeaderItem(0)
        item.setText(_translate("Dialog", "Id Билета"))
        item = self.tableticket.horizontalHeaderItem(1)
        item.setText(_translate("Dialog", "Имя"))
        item = self.tableticket.horizontalHeaderItem(2)
        item.setText(_translate("Dialog", "Фамилия"))
        item = self.tableticket.horizontalHeaderItem(3)
        item.setText(_translate("Dialog", "Отчество"))
        item = self.tableticket.horizontalHeaderItem(4)
        item.setText(_translate("Dialog", "Id Рейса"))
        item = self.tableticket.horizontalHeaderItem(5)
        item.setText(_translate("Dialog", "Id Диспечера"))

