import 'package:airtel_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class AirtelBundles extends StatelessWidget {
  final String dataAmount;
  final String dataValidity;
  final String price;
  const AirtelBundles(
      {Key? key,
      required this.dataAmount,
      required this.price,
      required this.dataValidity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: DarkGrey,
              borderRadius: BorderRadius.circular(30),
            ),
            height: 30,
            width: 30,
            child: Icon(
              Icons.pie_chart_outlined,
              color: white,
              size: 20,
            ),
          ),
          Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dataAmount,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                dataValidity,
                style: TextStyle(fontSize: 13, color: LightGrey),
              )
            ],
          ),
          Spacer(),
          RichText(
              text: TextSpan(
                  text: price,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 14,
                  ),
                  children: [
                TextSpan(
                    text: " TSH",
                    style: GoogleFonts.poppins(
                      color: MainRed,
                    ))
              ])),
        ],
      ),
    );
  }
}