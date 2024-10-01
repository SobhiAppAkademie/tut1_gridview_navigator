import 'package:flutter/material.dart';
import 'package:navigation_tut1/domain/product_item.dart';

class DetailPage extends StatelessWidget {
  // Die Daten erhalten wir vom vorherigen Screen und können somit
  // unseren Screen ganz einfach konfigurieren
  final ProductItem item;

  const DetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Titel
            Text(
              item.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            //Untertitel
            Text(item.memory),

            const SizedBox(
              height: 20,
            ),
            // Farbe
            Container(
              height: 30,
              width: 30,
              color: item.color,
            ),

            const SizedBox(
              height: 30,
            ),

            // Price
            Text(item.price.toStringAsFixed(2)),

            const SizedBox(
              height: 30,
            ),

            // Button - Zurück
            Center(
                child: ElevatedButton(
                    onPressed: () => Navigator.pop(
                        context), // Hiermit kommen wir wieder zum vorherigen Screen zurück
                    child: const Center(
                      child: Text("Zurück"),
                    )))
          ],
        ),
      )),
    );
  }
}
