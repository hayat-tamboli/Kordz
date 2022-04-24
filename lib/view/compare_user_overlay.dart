import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CompareUsersOverlay extends StatefulWidget {
  const CompareUsersOverlay({
    Key? key,
    required this.qrCode,
  }) : super(key: key);
  final String qrCode;

  @override
  State<CompareUsersOverlay> createState() => _CompareUsersOverlayState();
}

class _CompareUsersOverlayState extends State<CompareUsersOverlay> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: DraggableScrollableSheet(
        initialChildSize: 0.8,
        minChildSize: 0.6,
        builder: (_, controller) => Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Theme.of(context).bottomAppBarTheme.color,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
          child: Column(
            // controller: controller,
            children: [
              SizedBox(
                height: 4,
                width: 40,
                child: Container(
                  color: const Color(0xffA4A9B6),
                ),
              ),
              const SizedBox(height: 48),
              const Text(
                "Your code",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              Image(
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return const CircularProgressIndicator();
                },
                image: NetworkImage(widget.qrCode),
              ),
              const SizedBox(height: 48),
              Row(
                children: [
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Column(
                        children: const [
                          Icon(
                            FeatherIcons.camera,
                            size: 48,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Scan \nthe code",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Column(
                        children: const [
                          Icon(
                            FeatherIcons.image,
                            size: 48,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Get from \ngallery",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
