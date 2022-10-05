import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  int count;
  SecondPage({super.key, required this.count});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center ,
            height: 300,
            child: Text('${widget.count}',style: const TextStyle(fontSize: 30.0)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  widget.count++ ;
                });
              }, child: const Text('Add')),
              ElevatedButton(onPressed: (){
                setState(() {
                  widget.count-- ;
                });
              }, child: const Text('Delete')),
            ],
          )
        ],
      ),
    );
  }
}
