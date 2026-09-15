class Expense {
  final String id;
  String title;
  double amount;
  String category;
  DateTime expenseDate;

  Expense({

    required this.title,
    required this.amount,
    required this.category,
    required this.expenseDate,
  }): id = DateTime.now().millisecondsSinceEpoch.toString();
}