import 'package:flutter/material.dart';
import 'package:flutterprovider/screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Material App',
		home: HomePage()
	);
}
}
