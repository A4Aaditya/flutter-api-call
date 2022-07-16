//   "name": {
//     "title": "Mrs",
//     "first": "Clara",
//     "last": "Petersen"
//   },
class UserName {
  final String title;
  final String first;
  final String last;
  UserName({
    required this.title,
    required this.first,
    required this.last,
  });
  factory UserName.fromMap(Map<String, dynamic> json) {
    return UserName(
      first: json['first'],
      last: json['last'],
      title: json['title'],
    );
  }
}
