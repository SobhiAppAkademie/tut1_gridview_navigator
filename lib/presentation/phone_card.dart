import 'package:flutter/material.dart';
import 'package:navigation_tut1/domain/product_item.dart';
import 'package:navigation_tut1/presentation/detail_page.dart';

class PhoneCard extends StatelessWidget {
  const PhoneCard({
    super.key,
    required this.item,
    this.icon = Icons.phone,
  });

  final ProductItem item;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    // Ein GestureDetector, damit wir auf die Card klicken können
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(
                  item:
                      item))), // Hier navigieren wir auf DetailPage und übergeben das ProductItem
      child: Card(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    item.title,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: item.color,
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(color: Colors.grey, width: 0.5)),
              )
            ],
          )),
    );
  }
}
