import 'package:flutter/material.dart';
import 'package:flutter_api_call/model/user.dart';
import 'package:flutter_api_call/screens/widget/top_section.dart';

class UserDetailPage extends StatelessWidget {
  final User user;
  const UserDetailPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          TopSection(user: user),
          buildAddress(),
          Text(user.email),
          Text(user.phone),
        ],
      ),
    );
  }

  Widget buildAddress() {
    final age = user.dob.age;
    final date = user.dob.date;
    return Card(
      elevation: 10.0,
      color: const Color.fromARGB(255, 228, 227, 227),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Age : $age'),
          Text('DOB : $date'),
        ],
      ),
    );
  }
}
