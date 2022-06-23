import 'package:flutter/material.dart';
import 'package:horizantal/data/horizontalData.dart';

class HorizantalDisplay extends StatelessWidget {
  const HorizantalDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: Data_List.map(
            (itemData) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: itemData['color'],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      itemData['name'],
                      Image.asset(
                        itemData['image'],
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
