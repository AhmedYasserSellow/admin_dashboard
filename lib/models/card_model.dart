class CardModel {
  final String name;
  final String type;
  final String number;
  final int month;
  final int year;
  final int cvv;
  const CardModel(
      {required this.month,
      required this.name,
      required this.number,
      required this.type,
      required this.year,
      required this.cvv});
}
