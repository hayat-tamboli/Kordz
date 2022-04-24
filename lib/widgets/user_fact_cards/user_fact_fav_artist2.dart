import 'package:flutter/material.dart';
import 'package:kordz_app/widgets/user_fact_cards/user_fact_card_artist_tile.dart';

class UserFactFavArtist2 extends StatelessWidget {
  const UserFactFavArtist2({
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
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          UserFactCardArtist(
            artistImageURL:
                "https://i.scdn.co/image/ab6761610000e5eba5205abffd84341e5bace828",
            artistName: "Selena Gomez",
            number: 2,
          ),
          UserFactCardArtist(
            artistImageURL:
                "https://i.scdn.co/image/ab6761610000e5eb9966790d6abff677d3979eb6",
            artistName: "Pritam",
            number: 3,
          ),
        ],
      ),
    );
  }
}
