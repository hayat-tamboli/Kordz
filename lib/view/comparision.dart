import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kordz_app/view/chart.dart';
import 'package:kordz_app/widgets/top_artists_compared.dart';

class Comparision extends StatelessWidget {
  const Comparision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.black,
              child: Icon(
                FeatherIcons.arrowLeft,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: const Text(
          "Hayat" " X " "Manas",
          style: TextStyle(
            fontFamily: "Syne",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: GroupedFillColorBarChart.withSampleData(),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.blue,
                              ),
                              child: const SizedBox(height: 16, width: 16),
                            ),
                            const Text("Hayat"),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.deepOrange,
                              ),
                              child: const SizedBox(height: 16, width: 16),
                            ),
                            const Text("Manas"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Top artists in common",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TopArtistsCompared(),
            const TopArtistsCompared(),
            const TopArtistsCompared(),
            const TopArtistsCompared(),
          ],
        ),
      ),
    );
  }
}
