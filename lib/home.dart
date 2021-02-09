import 'package:flutter/material.dart';
import 'package:youtubeX/telas/Biblioteca.dart';
import 'package:youtubeX/telas/EmAlta.dart';
import 'package:youtubeX/telas/Inicio.dart';
import 'package:youtubeX/telas/Inscricao.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indexAtual = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [Inicio(), EmAlta(), Inscricao(), Biblioteca()];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey, opacity: 1),
        backgroundColor: Colors.white,
        title: Image.asset(
          'image/youtube.png',
          width: 98,
          height: 22,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              print("acao: videocam");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("acao: pesquisa");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print("acao: conta");
            },
          ),
        ],
      ),
      body: telas[_indexAtual],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indexAtual,
          onTap: (index) {
            setState(() {
              print(index);
              _indexAtual = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              label: "Inicio",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Em Alta",
              icon: Icon(Icons.whatshot),
            ),
            BottomNavigationBarItem(
              label: "Inicio",
              icon: Icon(Icons.subscriptions),
            ),
            BottomNavigationBarItem(
              label: "Biblioteca",
              icon: Icon(Icons.folder),
            ) //
          ]),
    );
  }
}
