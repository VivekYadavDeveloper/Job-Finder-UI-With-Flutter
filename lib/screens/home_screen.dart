import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/card_widget.dart';
import 'package:job_finder/const.dart';
import 'package:job_finder/screens/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            // color: Colors.deepOrangeAccent,
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "What Type Of Jobs Are You Looking For?",
                    strutStyle: const StrutStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const Text(
                    "Choose 2-5 job categories and we will optimize the job vacancy for you.",
                    style: TextStyle(color: infoColor),
                  ),
                  const Expanded(
                    // flex: 1,
                    child: CardWidget(),
                  ),
                  Container(
                    width: double.maxFinite,
                    // height: 90,
                    decoration: const BoxDecoration(
                        // color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                        minWidth: 300,
                        height: 50,
                        color: cardColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Get.to(const HomePage());
                        },
                        child: const Text(
                          "Let's Go",
                          style: TextStyle(color: barColor),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
