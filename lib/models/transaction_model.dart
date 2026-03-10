class TransactionModel {
  int? id;
  String title;
  double ammount;
  String type;
  String date;

  TransactionModel({
    this.id,
    required this.title,
    required this.ammount,
    required this.type,
    required this.date,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'ammount': ammount,
      'type': type,
      'date': date,
    };
  }

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(
      id: map['id'],
      title: map['title'],
      ammount: map['ammount'],
      type: map['type'],
      date: map['date'],
    );
  }
}
