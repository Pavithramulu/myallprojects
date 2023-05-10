class NewOne1 {
  final int userId;
  final int id;
  final String title;

  const NewOne1({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory NewOne1.fromJson(Map<String, dynamic> json) {
    return NewOne1(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

