import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        body: SizedBox(
          height: 300,
          child: Card(
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.network(
                      'https://amp.receitadevovo.com.br/wp-content/uploads/2020/10/bolo-de-trigo-fofinho.jpg',
                      fit: BoxFit.fill,
                      height: 268,
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text('Bolo de laranja', style: TextStyle(fontSize: 20),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Cozinhando em Casa'),
        ),
      ),
    );
  }
}
