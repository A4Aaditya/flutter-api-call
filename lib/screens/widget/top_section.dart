import 'package:flutter/material.dart';
import 'package:flutter_api_call/model/user.dart';

class TopSection extends StatelessWidget {
  final User user;
  const TopSection({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      width: double.maxFinite,
      child: Stack(
        children: [
          Container(
            height: 180,
            width: double.maxFinite,
            color: Colors.blue,
          ),
          Positioned(
            left: 30,
            bottom: 0,
            child: SizedBox(
              height: 120,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  user.picture.large,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 160,
            bottom: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.fullName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  user.email,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
