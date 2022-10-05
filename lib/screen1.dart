import 'package:flutter/material.dart';
import 'package:flutterprovider/screen2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.forward),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return SecondPage(
                count: itemCount,
              );
            }));
          }),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            child: Text(
              '$itemCount',
              style: const TextStyle(fontSize: 30),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    itemCount++;
                  });
                },
                child: const Text('Add'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    itemCount--;
                  });
                },
                child: const Text('Delete'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
