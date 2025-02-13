import psycopg2
from PyQt5 import QtWidgets, uic
from PyQt5.QtWidgets import QMessageBox

def get_connection():
    return psycopg2.connect(
        dbname='demotest',
        user='postgres',
        password='1234',
        host='localhost',
        port='5432'
    )


def get_family_members():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT family_members_id, family_members_name, birthay_date FROM Family_members")
    members = cur.fetchall()
    cur.close()
    conn.close()
    return members


def add_family_member(name, birth_date):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("INSERT INTO Family_members (family_members_name, birthay_date) VALUES (%s, %s)", (name, birth_date))
    conn.commit()
    cur.close()
    conn.close()


def delete_family_member(member_id):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("DELETE FROM Family_members WHERE family_members_id = %s", (member_id,))
    conn.commit()
    cur.close()
    conn.close()


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self):
        super().__init__()
        uic.loadUi('ui/mainwindow.ui', self)
        self.setWindowTitle("Учет семейного бюджета")
        self.load_family_members()
        self.addButton.clicked.connect(self.add_member)
        self.deleteButton.clicked.connect(self.delete_member)

    def load_family_members(self):
        members = get_family_members()
        self.familyTable.setRowCount(0)
        for member in members:
            row_position = self.familyTable.rowCount()
            self.familyTable.insertRow(row_position)
            for i, item in enumerate(member):
                self.familyTable.setItem(row_position, i, QtWidgets.QTableWidgetItem(str(item)))

    def add_member(self):
        name = self.nameInput.text()
        birth_date = self.birthDateInput.text()
        if name and birth_date:
            add_family_member(name, birth_date)
            self.load_family_members()
        else:
            QMessageBox.warning(self, "Ошибка", "Заполните все поля")

    def delete_member(self):
        selected_row = self.familyTable.currentRow()
        if selected_row == -1:
            QMessageBox.warning(self, "Ошибка", "Выберите члена семьи для удаления")
            return
        member_id = int(self.familyTable.item(selected_row, 0).text())
        delete_family_member(member_id)
        self.load_family_members()

if __name__ == '__main__':
    import sys
    app = QtWidgets.QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
