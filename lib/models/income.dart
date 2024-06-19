import 'package:expense_tracker_app/models/transaction.dart';

class Income extends Transaction {
  final String incomeSource;
  final DateTime createdOn;

  Income({
    required this.incomeSource,
    required super.amount,
    super.type = 0,
  }) : createdOn = DateTime.now();
}
