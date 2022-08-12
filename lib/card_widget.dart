import 'package:flutter/material.dart';
import 'package:job_finder/const.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 200,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        jobCard(
            "Human Resource",
            const Icon(
              Icons.people_alt_outlined,
              color: cardColor,
            ),
            barColor),
        jobCard(
            "Building & Architecture",
            const Icon(
              Icons.architecture_rounded,
              color: cardColor,
            ),
            barColor),
        jobCard(
            "Customer Service",
            const Icon(
              Icons.headset_mic,
              color: barColor,
            ),
            cardColor),
        jobCard(
            "Hospitality & Leisure",
            const Icon(
              Icons.hotel_rounded,
              color: barColor,
            ),
            cardColor),
        jobCard(
            "Marketing & Business",
            const Icon(
              Icons.campaign_rounded,
              color: cardColor,
            ),
            barColor),
        jobCard(
            "Medical & Pharma",
            const Icon(
              Icons.local_hospital_rounded,
              color: cardColor,
            ),
            barColor),
        jobCard(
            "Developer",
            const Icon(
              Icons.developer_mode_rounded,
              color: barColor,
            ),
            cardColor),
        jobCard(
            "Software Engg.",
            const Icon(
              Icons.computer_rounded,
              color: barColor,
            ),
            cardColor),
      ],
    );
  }
}

//**** Card Widgets
Widget jobCard(String txt, Icon icon, Color int) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      //TODO: Function
      onTap: () {},
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.blueGrey.shade200,
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(4, 4))
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
          color: int,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: icon,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                txt,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
