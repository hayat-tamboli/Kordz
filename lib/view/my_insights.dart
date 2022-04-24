import 'package:flutter/material.dart';
import 'package:kordz_app/utils/constants.dart';
import 'package:kordz_app/widgets/button.dart';
import 'package:kordz_app/widgets/compare_btn.dart';
import 'package:kordz_app/widgets/user_fact_fav_artist1.dart';
import 'package:tcard/tcard.dart';

class MyInsights extends StatelessWidget {
  const MyInsights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: const CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/55529269?v=4"),
          ),
          title: Row(
            children: const [
              Text("Hayat Tamboli"),
              Icon(Icons.arrow_drop_down_circle_outlined),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: Column(
          children: [
            TCard(
              size: Size(MediaQuery.of(context).size.width, 300),
              cards: const [
                UserFactFavArtist1(),
                UserFactFavArtist1(),
                UserFactFavArtist1(),
              ],
            ),
            const CompareButton(),
            PrimaryButton(
              buttonTitle: "logout",
              onPressed: () {
                Constants.logoutPref();
                Navigator.pushNamed(context, "/authorization");
              },
            ),
          ],
        ),
      )),
    );
  }
}
