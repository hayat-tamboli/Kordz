import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class TopArtistsCompared extends StatelessWidget {
  const TopArtistsCompared({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 16),
      shape: SmoothRectangleBorder(
        borderRadius: SmoothBorderRadius(
          cornerRadius: 20,
          cornerSmoothing: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: ShapeDecoration(
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 20,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              child: const Image(
                width: 90,
                height: 70,
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://i.scdn.co/image/ab6761610000e5ebc02d416c309a68b04dc94576",
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "#1",
                  style: TextStyle(
                    color: Color(0xff5C657D),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Alan Walker",
                  style: TextStyle(
                    fontFamily: "Syne",
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
