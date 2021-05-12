import 'package:flutter/material.dart';
import '../../models/receita.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return _construirHome();
  }

  Widget _construirHome() {
    return Scaffold(
      body: _construirCard(),
      appBar: _construirAppBar(),
    );
  }

  Widget _construirListaCard() {
    return FutureBuilder(
      future: DefaultAssetBundle
          .of(context)
          .loadString('assets/receitas.json'),
      builder: ,
    );
  }

  Widget _construirCard() {
    return SizedBox(
      height: 300,
      child: Card(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Stack(
              children: [
                _construirImagemCard(),
                _construirTextoCard(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _construirTextoCard() {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Text(
        'Bolo de laranja',
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget _construirImagemCard() {
    return Image.network(
      'https://amp.receitadevovo.com.br/wp-content/uploads/2020/10/bolo-de-trigo-fofinho.jpg',
      fit: BoxFit.fill,
      height: 268,
    );
  }

  Widget _construirAppBar() {
    return AppBar(
      title: Center(
        child: Text('Cozinhando em Casa'),
      ),
    );
  }
}
