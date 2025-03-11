import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              color: Colors.lightBlueAccent,
            ),
            SizedBox(height: 20),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue[900],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tela2()),
                );
              },
              child: Text('Ir para Tela 2'),
            ),
          ],
        ),
      ),
    );
  }
}


class Tela2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.lightBlueAccent,
                ),
                SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue[900],
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar para Tela 1'),
            ),
          ],
        ),
      ),
    );
  }
}

