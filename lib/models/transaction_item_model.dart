class TransactionModel {
  final String title;
  final String date;
  final String amount;
  final bool isDeposit;

  const TransactionModel({
    required this.amount,
    required this.date,
    required this.isDeposit,
    required this.title,
  });
}
