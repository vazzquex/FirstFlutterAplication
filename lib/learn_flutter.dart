import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aprendiendo Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/hello.png'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'This is container',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('Elevated Button');
              Navigator.of(context).pop();
            },
            child: const Text('Eleveited Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outline Button');
              Navigator.of(context).pop();
            },
            child: const Text('Outline Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Text Button');
              Navigator.of(context).pop();
            },
            child: const Text('Text Button'),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.map,
              ),
              Text('Row widget'),
              Icon(
                Icons.map,
              ),
            ],
          )
        ],
      ),
    );
  }
}
