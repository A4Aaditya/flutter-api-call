import 'package:flutter/material.dart';
import 'package:flutter_api_call/model/user.dart';
import 'package:flutter_api_call/screens/details.dart';
import 'package:flutter_api_call/service/user_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http API call'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (_, index) {
          final user = users[index];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(user.thumbnail),
            ),
            title: Text(user.fullName),
            subtitle: Text(user.dob.date.year.toString()),
            onTap: () {
              navigateDetailPage(user);
            },
          );
        },
      ),
    );
  }

  void fetchUsers() async {
    final userApi = UserApi();
    final persons = await userApi.fetchUsers();
    setState(() {
      users = persons;
    });
  }

  void navigateDetailPage(User user) {
    final route = MaterialPageRoute(
      builder: (_) => UserDetailPage(user: user),
    );
    Navigator.push(context, route);
  }
}
