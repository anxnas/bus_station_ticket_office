from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QMessageBox
import sys
from busframe import Ui_bus_frame
from buyframe import Ui_buy_frame
from driverframe import Ui_driver_frame
from loginframe import Ui_Dialog
from panelframe import Ui_main
from ticketframe import Ui_ticket_frame
import pyodbc


app = QtWidgets.QApplication(sys.argv)

Dialog1 = QtWidgets.QDialog()
desk1 = Ui_Dialog()
desk1.setupUi(Dialog1)
Dialog1.show()


def loginpass():
    login = desk1.login_EDIT.text()
    password = desk1.password_EDIT.text()
    key = 0
    connection = pyodbc.connect('Driver={SQL Server};' 'Server=VLADPC;' 'Database=bus_station_database_04_04_2022;' 'Trusted_connection=yes;')
    cursor = connection.cursor()
    cursor.execute(f"SELECT id_dispatcher, first_name, passport FROM dispatcher WHERE first_name='{login}' AND passport={password}")
    for row in cursor:
        if row[1] == f"{login}":
            if str(row[2]) == f"{password}.0":
                global iddesp
                iddesp = row[0]
                key = 1
                global main
                main = QtWidgets.QMainWindow()
                desk2 = Ui_main()
                desk2.setupUi(main)
                Dialog1.close()
                main.show()

                def numbernull():
                    if desk2.number.currentText() == "Сортировка по номеру":
                        desk2.routetable.clear()
                        desk2.routetable.setHorizontalHeaderLabels(("Id", "Пункт оправления", "Пункт прибытия",
                                                                   "Id Автобуса", "Id Водителя", "Время отправления",
                                                                   "Время прибытия", "Свободных мест", "Номер маршрута",
                                                                   "Цена"))
                        connection = pyodbc.connect('Driver={SQL Server};' 'Server=VLADPC;' 'Database=bus_station_database_04_04_2022;' 'Trusted_connection=yes;')
                        cursor = connection.cursor()
                        cursor.execute('SELECT * FROM route')
                        desk2.routetable.setRowCount(0)
                        for row_number, row_data in enumerate(cursor):
                            desk2.routetable.insertRow(row_number)
                            for colum_number, data in enumerate(row_data):
                                desk2.routetable.setItem(row_number, colum_number, QtWidgets.QTableWidgetItem(str(data)))
                        connection.commit()
                    if desk2.number.currentText() == "22":
                        desk2.routetable.clear()
                        desk2.routetable.setHorizontalHeaderLabels(
                            ("Id", "Пункт оправления", "Пункт прибытия", "Id Автобуса",
                             "Id Водителя", "Время отправления", "Время прибытия",
                             "Свободных мест", "Номер маршрута", "Цена"))
                        connection = pyodbc.connect(
                            'Driver={SQL Server};' 'Server=VLADPC;' 'Database=bus_station_database_04_04_2022;' 'Trusted_connection=yes;')
                        cursor = connection.cursor()
                        cursor.execute('SELECT * FROM route WHERE number = 22')
                        desk2.routetable.setRowCount(0)
                        for row_number, row_data in enumerate(cursor):
                            desk2.routetable.insertRow(row_number)
                            for colum_number, data in enumerate(row_data):
                                desk2.routetable.setItem(row_number, colum_number, QtWidgets.QTableWidgetItem(str(data)))
                        connection.commit()
                    if desk2.number.currentText() == "33":
                        desk2.routetable.clear()
                        desk2.routetable.setHorizontalHeaderLabels(
                            ("Id", "Пункт оправления", "Пункт прибытия", "Id Автобуса",
                             "Id Водителя", "Время отправления", "Время прибытия",
                             "Свободных мест", "Номер маршрута", "Цена"))
                        connection = pyodbc.connect(
                            'Driver={SQL Server};' 'Server=VLADPC;' 'Database=bus_station_database_04_04_2022;' 'Trusted_connection=yes;')
                        cursor = connection.cursor()
                        cursor.execute('SELECT * FROM route WHERE number = 33')
                        desk2.routetable.setRowCount(0)
                        for row_number, row_data in enumerate(cursor):
                            desk2.routetable.insertRow(row_number)
                            for colum_number, data in enumerate(row_data):
                                desk2.routetable.setItem(row_number, colum_number, QtWidgets.QTableWidgetItem(str(data)))
                        connection.commit()
                    if desk2.number.currentText() == "47":
                        desk2.routetable.clear()
                        desk2.routetable.setHorizontalHeaderLabels(
                            ("Id", "Пункт оправления", "Пункт прибытия", "Id Автобуса",
                             "Id Водителя", "Время отправления", "Время прибытия",
                             "Свободных мест", "Номер маршрута", "Цена"))
                        connection = pyodbc.connect(
                            'Driver={SQL Server};' 'Server=VLADPC;' 'Database=bus_station_database_04_04_2022;' 'Trusted_connection=yes;')
                        cursor = connection.cursor()
                        cursor.execute('SELECT * FROM route WHERE number = 47')
                        desk2.routetable.setRowCount(0)
                        for row_number, row_data in enumerate(cursor):
                            desk2.routetable.insertRow(row_number)
                            for colum_number, data in enumerate(row_data):
                                desk2.routetable.setItem(row_number, colum_number, QtWidgets.QTableWidgetItem(str(data)))
                        connection.commit()

                def showbusframe():
                    global bus_frame
                    bus_frame = QtWidgets.QDialog()
                    desk3 = Ui_bus_frame()
                    desk3.setupUi(bus_frame)
                    bus_frame.show()

                def showticketframe():
                    global ticket_frame
                    ticket_frame = QtWidgets.QDialog()
                    desk4 = Ui_ticket_frame()
                    desk4.setupUi(ticket_frame)
                    ticket_frame.show()

                def showbuyticketframe():
                    global buyticket_frame
                    buyticket_frame = QtWidgets.QDialog()
                    desk5 = Ui_buy_frame()
                    desk5.setupUi(buyticket_frame)
                    buyticket_frame.show()


                    def processbuyticket():
                        lastname = desk5.linef.text()
                        firstname = desk5.linel.text()
                        middlename = desk5.linem.text()
                        reis = desk5.liner.text()
                        connection = pyodbc.connect('Driver={SQL Server};' 'Server=VLADPC;' 'Database=bus_station_database_04_04_2022;' 'Trusted_connection=yes;')
                        cursor = connection.cursor()
                        if lastname != "":
                            if firstname != "":
                                if middlename != "":
                                    if reis != "":
                                        cursor.execute(f"INSERT INTO ticket VALUES ('{firstname}', '{lastname}','{middlename}', '{reis}', '{iddesp}');")
                                        connection.commit()
                                        msg = QMessageBox()
                                        msg.setWindowTitle("Запрос")
                                        msg.setText("УСПЕХ")

                                        x = msg.exec_()
                                    else:
                                        msg = QMessageBox()
                                        msg.setWindowTitle("Запрос")
                                        msg.setText("Введите номер рейса!")

                                        x = msg.exec_()
                            else:
                                msg = QMessageBox()
                                msg.setWindowTitle("Запрос")
                                msg.setText("Введите имя!")

                                x = msg.exec_()
                        else:
                            msg = QMessageBox()
                            msg.setWindowTitle("Запрос")
                            msg.setText("Введите фамилию!")

                            x = msg.exec_()

                    def deletebuyticket():
                        lastname = desk5.linef.text()
                        firstname = desk5.linel.text()
                        middlename = desk5.linem.text()
                        reis = desk5.liner.text()
                        connection = pyodbc.connect('Driver={SQL Server};' 'Server=VLADPC;' 'Database=bus_station_database_04_04_2022;' 'Trusted_connection=yes;')
                        cursor = connection.cursor()
                        if lastname != "":
                            if firstname != "":
                                if middlename != "":
                                    if reis != "":
                                        cursor.execute(f"DELETE FROM ticket WHERE first_name='{firstname}' AND last_name='{lastname}' AND middle_name='{middlename}' AND id_route={reis}")
                                        connection.commit()
                                        msg = QMessageBox()
                                        msg.setWindowTitle("Запрос")
                                        msg.setText("УСПЕХ")

                                        x = msg.exec_()
                                    else:
                                        msg = QMessageBox()
                                        msg.setWindowTitle("Запрос")
                                        msg.setText("Введите номер рейса!")

                                        x = msg.exec_()
                            else:
                                msg = QMessageBox()
                                msg.setWindowTitle("Запрос")
                                msg.setText("Введите имя!")

                                x = msg.exec_()
                        else:
                            msg = QMessageBox()
                            msg.setWindowTitle("Запрос")
                            msg.setText("Введите фамилию!")

                            x = msg.exec_()



                    desk5.buybut.clicked.connect(processbuyticket)
                    desk5.givebut.clicked.connect(deletebuyticket)

                def showdriverframe():
                    global driver_frame
                    driver_frame = QtWidgets.QDialog()
                    desk6 = Ui_driver_frame()
                    desk6.setupUi(driver_frame)
                    driver_frame.show()

                desk2.search.clicked.connect(numbernull)
                desk2.bus.clicked.connect(showbusframe)
                desk2.ticket.clicked.connect(showticketframe)
                desk2.buyticket.clicked.connect(showbuyticketframe)
                desk2.driver.clicked.connect(showdriverframe)

    connection.commit()
    if key == 0:
        msg = QMessageBox()
        msg.setWindowTitle("Ошибка")
        msg.setText("Неверный логин или пароль! Повторите попытку снова.")

        x = msg.exec_()

desk1.startbutton.clicked.connect(loginpass)


sys.exit(app.exec_())