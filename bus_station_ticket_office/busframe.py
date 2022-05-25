from PyQt5 import QtCore, QtGui, QtWidgets
import pyodbc


class Ui_bus_frame(object):
    def setupUi(self, bus_frame):
        bus_frame.setObjectName("bus_frame")
        bus_frame.resize(401, 361)
        self.buslabel = QtWidgets.QLabel(bus_frame)
        self.buslabel.setGeometry(QtCore.QRect(130, 10, 171, 31))
        font = QtGui.QFont()
        font.setPointSize(20)
        font.setBold(True)
        font.setWeight(75)
        self.buslabel.setFont(font)
        self.buslabel.setTextFormat(QtCore.Qt.AutoText)
        self.buslabel.setWordWrap(False)
        self.buslabel.setObjectName("buslabel")
        self.groupBox = QtWidgets.QGroupBox(bus_frame)
        self.groupBox.setGeometry(QtCore.QRect(0, 0, 401, 51))
        self.groupBox.setTitle("")
        self.groupBox.setObjectName("groupBox")
        self.tableWidget = QtWidgets.QTableWidget(bus_frame)
        self.tableWidget.setGeometry(QtCore.QRect(0, 50, 401, 311))
        self.tableWidget.setObjectName("tableWidget")
        self.tableWidget.setColumnCount(4)
        self.tableWidget.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(3, item)
        self.groupBox.raise_()
        self.buslabel.raise_()
        self.tableWidget.raise_()

        self.retranslateUi(bus_frame)
        QtCore.QMetaObject.connectSlotsByName(bus_frame)

        connection = pyodbc.connect('Driver={SQL Server};' 'Server=VLADPC;' 'Database=bus_station_database_04_04_2022;' 'Trusted_connection=yes;')
        cursor = connection.cursor()
        cursor.execute('SELECT * FROM bus')
        self.tableWidget.setRowCount(0)
        for row_number, row_data in enumerate(cursor):
            self.tableWidget.insertRow(row_number)
            for colum_number, data in enumerate(row_data):
                self.tableWidget.setItem(row_number, colum_number, QtWidgets.QTableWidgetItem(str(data)))
        connection.commit()

    def retranslateUi(self, bus_frame):
        _translate = QtCore.QCoreApplication.translate
        bus_frame.setWindowTitle(_translate("bus_frame", "Автобусы"))
        self.buslabel.setText(_translate("bus_frame", "Автобусы"))
        item = self.tableWidget.horizontalHeaderItem(0)
        item.setText(_translate("bus_frame", "Id Автобуса"))
        item = self.tableWidget.horizontalHeaderItem(1)
        item.setText(_translate("bus_frame", "Модель ТС"))
        item = self.tableWidget.horizontalHeaderItem(2)
        item.setText(_translate("bus_frame", "Номер ТС"))
        item = self.tableWidget.horizontalHeaderItem(3)
        item.setText(_translate("bus_frame", "Кол-во мест"))


