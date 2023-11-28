import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const ["Daft Punk", "deadmau5", "Avicii"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview tipo 1"),
      ),
      body: ListView(children: [
        ...options
            .map((artist) => ListTile(
                  title: Text(artist),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ))
            .toList()
      ]),
    );
  }
}
