import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'DetailScreen.dart';
import 'main.dart';


class TodoScreen extends StatelessWidget {
  final List<Todo> todos;

  TodoScreen({Key key,@required this.todos}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo:todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}