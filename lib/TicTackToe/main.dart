import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tic Tac Toe',
        theme: ThemeData(primarySwatch: Colors.amber),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  var grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tic Tac Toe'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: grid.length,
          itemBuilder: (context, index) =>InkWell(
            splashColor: Colors.amber,
            onTap: (){},
            child: Center(
              child: Text(
            grid[index],
            style: TextStyle(fontSize: 50),
          )),
        ),
        ));
  }
}
