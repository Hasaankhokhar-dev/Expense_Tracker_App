import 'package:expense_tracker/database/db_helper.dart';
import 'package:expense_tracker/models/transaction_model.dart';
import 'package:flutter/cupertino.dart';

class TransactionProvider extends ChangeNotifier {
  final DbHelper _dbHelper = DbHelper();
  List<TransactionModel> _transactions = [];
  List<TransactionModel> get transactions => _transactions;

  double get totalIncome {
    return _transactions
        .where((t) => t.type == 'income')
        .fold(0.0, (sum, t) => sum + t.ammount);
  }

  double get totalExpence {
    return _transactions
        .where((t) => t.type == "expense")
        .fold(0.0, (sum, t) => sum + t.ammount);

    // double total = 0.0;
    //
    // for(var t in _transactions){
    //   if(t.type == 'expense'){
    //     total = total + t.amount;
    //   }
    // }
    //
    // return total;
  }

  double get balance {
    return  totalIncome - totalExpence;
  }

  Future<void> loadTransactions() async {
    _transactions = await _dbHelper.getAllTransactions();
    notifyListeners();
  }

  Future<void> addTransaction(TransactionModel transaction) async {
    await _dbHelper.insertTransaction(transaction);
    await loadTransactions();
  }

  Future<void> deleteTransaction(int id) async {
    await _dbHelper.deleteTransaction(id);
    await loadTransactions();
  }
}
