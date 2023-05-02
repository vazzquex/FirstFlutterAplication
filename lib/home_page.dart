import 'package:flutter/material.dart';
import 'package:flutter_application_1/learn_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const LearnFlutter();
              },
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(26.0),
        ),
        child: const Text("Home Page Primary"),
      ),
    );
  }
}
