import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class UserFactFavArtist1 extends StatelessWidget {
  const UserFactFavArtist1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xffEEEFF2),
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: const Color(0xffE2E4E8),
            width: 2,
          )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Opacity(
                  opacity: 0.2,
                  child: Icon(
                    Icons.favorite_outline_outlined,
                    size: 24,
                  ),
                ),
                Opacity(
                  opacity: 0.8,
                  child: Flexible(
                    child: Text(
                      "Your #1 current favourite artist is ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.8,
                  child: Flexible(
                    child: Text(
                      "Alan Walker",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Syne",
                        fontSize: 24,
                      ),
                      softWrap: true,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: ShapeDecoration(
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 32,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              child: const Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://i.scdn.co/image/ab6761610000e5ebc02d416c309a68b04dc94576"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}