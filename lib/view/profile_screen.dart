import 'package:flutter/material.dart';
import 'package:stage_two_task/widget/profileContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(),
            child: Image.asset(
              "assets/profile_background.jpg",
              fit: BoxFit.cover,
              opacity: const AlwaysStoppedAnimation(.8),
            ),
          ),
          ProfileContainer()
        ],
      ),
    );
  }
}
