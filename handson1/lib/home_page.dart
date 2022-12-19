import 'package:flutter/material.dart';
import 'package:handson1/details_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List todos = <dynamic>[];

  @override
  void initState() {
    getTodo();
    super.initState();
  }

  getTodo() async{
    var url = "https://jsonplaceholder.typicode.com/todos";
    var response = await http.get(Uri.parse(url));

    setState(() {
      todos = convert.jsonDecode(response.body) as List<dynamic>;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Todo List"),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('ID: ${todos[index]['id']}'),
              subtitle: Text('USER ID: ${todos[index]['userId']}'),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(data: todos[index]))
                );
              },
            );
          }
      ),
    );
  }
}
