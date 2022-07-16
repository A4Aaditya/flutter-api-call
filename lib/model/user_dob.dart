//  "dob": {
// //     "date": "1946-01-13T09:47:04.175Z",
// //     "age": 76
// //   },
class UserDob {
  final DateTime date;
  final int age;

  UserDob({
    required this.age,
    required this.date,
  });

  factory UserDob.fromMap(Map<String, dynamic> json) {
    final stringDate = json['date'];
    return UserDob(
      age: json['age'],
      date: DateTime.parse(stringDate),
    );
  }
}
