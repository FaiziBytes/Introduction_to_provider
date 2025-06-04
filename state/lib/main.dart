// import 'package:provider/provider.dart';
// import 'package:flutter/material.dart';
// import 'State.dart';
//
// void main() {
//   runApp(ChangeNotifierProvider(
//     create: (context) => Counter(),
//     child: MyApp(),
//   ));
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     print("build");
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Consumer<Counter>(builder: (context, counter, child) {
//             return Text(
//               "${counter.count}",
//               style: TextStyle(
//                 fontSize: 40,
//              ),
//             );
//           }),
//         ),
//         floatingActionButton:
//             Consumer<Counter>(builder: (context, counter, child) {
//           return FloatingActionButton(
//             onPressed: counter.increment,
//             child: Icon(Icons.add),
//           );
//         }),
//       ),
//     );
//   }
// }

// Second Method
//
import "package:flutter/material.dart";
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Consumer<Counter>(builder: (context, counter, child) {
            return Text(
              "${counter.count}",
              style: TextStyle(fontSize: 30),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<Counter>().increment();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
