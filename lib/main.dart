import 'package:flutter/material.dart';

void main() {
  runApp(Accueil("Mon titre", "Benjamin"));
}

class Accueil extends StatelessWidget {
  final String title;
  final String? username;
  Accueil(this.title, [this.username]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Column(
              children: [
                Text("Hello ${username ?? "world"}!"),
                Row(
                  children: [
                    Icon(Icons.handshake),
                    Text("Bonjour tout le monde !"),
                    Icon(Icons.handshake),
                  ],
                )
              ],
            )));
  }
}
