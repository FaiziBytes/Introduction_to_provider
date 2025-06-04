import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'State.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Counter(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You have pushed this button many times"),
              SizedBox(
                height: 5,
              ),
              Consumer<Counter>(builder: (context, counter, child) {
                return Text(
                  "${counter.count}",
                  style: TextStyle(color: Colors.blue, fontSize: 24),
                );
              }),
            ],
          ),
        ),
        floatingActionButton:
            Consumer<Counter>(builder: (context, counter, child) {
          return FloatingActionButton(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            onPressed: counter.increment,
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
