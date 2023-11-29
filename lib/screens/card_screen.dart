import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Card Screen",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.ac_unit_outlined,
                      color: AppTheme.primary,
                    ),
                    title: Text("Soy un titulo"),
                    subtitle: Text("Soy un subtitulo XDDDDD"),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
