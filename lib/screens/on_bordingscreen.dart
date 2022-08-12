import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const.dart';
import 'home_screen.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              Theme.of(context).brightness == Brightness.light
                  ? "assets/FJob.png"
                  : "assets/FJob.png",
              fit: BoxFit.contain,
              width: 500,
              height: 600,
            ),
          ),
          Expanded(
            child: SafeArea(
              top: false,
              child: Column(
                children: <Widget>[
                  // const Spacer(),
                  Text(
                    "Looking For A Dream Job ? \n  1000+ Jobs Listed Daily",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  const Text(
                    "Now You Can Easily Find Your Dream\nJob On Job Finder.",
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(
                    width: 150.0,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: cardColor,
                          padding: const EdgeInsets.all(defaultPadding),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Get.to(const HomeScreen());
                        },
                        child: const Text("Get Set Go"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
