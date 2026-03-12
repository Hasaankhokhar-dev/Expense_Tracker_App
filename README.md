# 📊 Expense Tracker – Flutter App

A simple and clean **Expense Tracker App** built using Flutter, SQLite, and Provider state management.  
This app helps users track income, expenses, and maintain a complete transaction history locally.

---

## 🚀 Features
- Add Income & Expense Transactions  
- View Total Balance, Income & Expense  
- Delete Transactions  
- SQLite Local Database  
- Provider State Management  
- Desktop Compatible (sqflite_common_ffi)  
- Material 3 UI Design  

---

## 🛠️ Tech Stack
- Flutter (Material 3)
- SQLite (sqflite, sqflite_common_ffi)
- Provider State Management
- Path & Intl packages

---

## 📦 Dependencies

```yaml
cupertino_icons: ^1.0.8
sqflite: ^2.3.0
sqflite_common_ffi: ^2.3.0
path: ^1.8.3
intl: ^0.19.0
provider: ^6.1.1
```

---

## 📂 Folder Structure

```
lib/
│── main.dart
│
├── database/
│     └── db_helper.dart
│
├── models/
│     └── transaction_model.dart
│
├── provider/
│     └── transaction_provider.dart
│
└── screens/
      ├── home_screen.dart
      └── add_transaction_screen.dart
```

---

## ▶️ How to Run

```
flutter pub get
flutter run
```

For **Windows/Linux/Mac Desktop**, ensure:

```
sqfliteFfiInit();
databaseFactory = databaseFactoryFfi;
```

---

## 📄 License
This project is for learning purposes. You may modify and extend it freely.
