import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class UserFactCardArtist extends StatelessWidget {
  const UserFactCardArtist({
    Key? key,
    required this.artistName,
    required this.number,
    required this.artistImageURL,
  }) : super(key: key);
  final int number;
  final String artistName;
  final String artistImageURL;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          child: Image(
            height: 70,
            width: 70,
            fit: BoxFit.cover,
            image: NetworkImage(artistImageURL),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "#" + number.toString(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff5C657D),
              ),
            ),
            Text(
              artistName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Syne",
                color: Color(0xff000000),
                overflow: TextOverflow.clip,
              ),
              maxLines: 1,
            ),
          ],
        ),
      ],
    );
  }
}
