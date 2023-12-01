import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

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
            CustomCardType1(),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              name: 'deadmau5',
              imageURl:
                  'https://www.billboard.com/wp-content/uploads/2022/06/deadmau5-cr-Leah-Sems-press-2022-billboard-1548.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageURl:
                    'https://www.lavanguardia.com/files/og_thumbnail/files/fp/uploads/2021/02/22/603431bc5ae42.r_d.382-373-0.jpeg'),
          ],
        ));
  }
}
