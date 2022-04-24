import 'package:flutter/material.dart';
import 'package:kordz_app/widgets/user_fact_cards/user_fact_card_artist_tile.dart';

class UserFactFavArtist3 extends StatelessWidget {
  const UserFactFavArtist3({
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
                "https://i.scdn.co/image/ab6761610000e5ebf5307f741767ab8da198a0b9",
            artistName: "Rochak Kohli",
            number: 4,
          ),
          UserFactCardArtist(
            artistImageURL:
                "https://i.scdn.co/image/ab6761610000e5eb26d22ea4e8dc8540d417dda2",
            artistName: "Advait",
            number: 5,
          ),
        ],
      ),
    );
  }
}
