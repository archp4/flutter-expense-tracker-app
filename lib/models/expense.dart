import 'package:expense_tracker_app/models/category.dart';
import 'package:expense_tracker_app/models/transaction.dart';

class Expense extends Transaction {
  final String expenseTitle;
  final Category category;
  final DateTime createdOn;

  Expense({
    required this.expenseTitle,
    required super.amount,
    required this.category,
    super.type = 0,
  }) : createdOn = DateTime.now();
}
