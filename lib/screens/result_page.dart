import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {Key? key, required this.map, required this.agent, required this.gun})
      : super(key: key);
  final String map;
  final String agent;
  final String gun;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('''
            Thank you for submitting your responses. Submitted Responses : map: ${widget.map} agent: ${widget.agent} gun: ${widget.gun}
             '''),
      ),
    );
  }
}
