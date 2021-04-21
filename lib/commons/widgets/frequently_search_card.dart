import 'package:flutter/material.dart';

class FrequentlySearchCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  FrequentlySearchCard(this.imageUrl, this.title, this.subtitle);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(imageUrl), fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 4),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.grey[600], fontWeight: FontWeight.w600),
              ),
            ),
            Text(subtitle,
                style: TextStyle(
                  color: Colors.grey[600],
                ))
          ],
        ));
  }
}
