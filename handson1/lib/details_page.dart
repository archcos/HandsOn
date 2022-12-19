import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final dynamic data;

  const DetailsPage({
    required this.data,
    Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Details"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Text('ID: ${widget.data['id']}'),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Text('USER ID: ${widget.data['userId']}'),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Text('TITLE: ${widget.data['title']}'),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Text('COMPLETED: ${widget.data['completed']}'),
        ],
      ),
    );
  }
}
