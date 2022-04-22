import 'package:flutter/material.dart';
import 'package:kordz_app/utils/constants.dart';
import 'package:kordz_app/widgets/button.dart';

class Authorization extends StatefulWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  _AuthorizationState createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/auth_bg.png"),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
          child: Column(
            children: [
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(48)),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     blurRadius: 100.0,
                  //     blurStyle: BlurStyle.inner,
                  //   ),
                  // ],
                ),
                child: Column(
                  children: [
                    const Text(
                      "Explore your music taste",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffF2F2F2),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "compare your taste with others",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffCACDD5),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    PrimaryButton(
                      buttonTitle: "Connect to spotify",
                      onPressed: () {
                        Constants.loginPref("Hayat");
                        Navigator.of(context)
                            .pushReplacementNamed("/myinsights");
                      },
                      iconRight: const Icon(
                        Icons.arrow_right_alt_rounded,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
