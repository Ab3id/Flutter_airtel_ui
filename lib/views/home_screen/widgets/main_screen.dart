import 'package:airtel_ui/utils/theme.dart';
import 'package:airtel_ui/views/home_screen/widgets/quick_actions.dart';
import 'package:airtel_ui/widgets/icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bundles.dart';

class Home extends StatelessWidget {
  final VoidCallback? onMenuPressed;
  const Home({Key? key, required this.screenSize, this.onMenuPressed})
      : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenSize.height * .40,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [MainRed, DarkRed])),
        ),
        SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlobalIcon(
                  icon: 'assets/images/svg/menu.svg',
                  iconColor: white,
                  onPressed: onMenuPressed,
                ),
                Gap(15),
                Image(
                  image: const AssetImage('assets/images/png/airtel_white.png'),
                  width: 70,
                  height: 40,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: const Icon(
                    Icons.notifications,
                    color: white,
                  ),
                )
              ],
            ),
            Gap(20),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Good Morning, ',
                            style: GoogleFonts.poppins(
                                color: white,
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                height: 2),
                            children: [
                          TextSpan(
                              text: 'Ab3id \n +255719858439',
                              style: GoogleFonts.poppins(
                                  color: white, fontWeight: FontWeight.bold))
                        ])),
                    Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration:
                            BoxDecoration(color: white, shape: BoxShape.circle),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1264636788590686209/jxZ5frpJ_400x400.jpg'),
                        ))
                  ],
                )),
            Gap(20),
            Container(
              padding: EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                height: screenSize.height / 6,
                width: screenSize.width,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "My Balance",
                                style: TextStyle(fontSize: 14),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: RichText(
                                    text: TextSpan(
                                        text: "200.00 ",
                                        style: GoogleFonts.poppins(
                                            color: black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                      TextSpan(
                                          text: "TSH",
                                          style: GoogleFonts.poppins(
                                              color: MainRed,
                                              fontWeight: FontWeight.bold))
                                    ])),
                              ),
                              Container(
                                  margin: EdgeInsets.all(10),
                                  height: 40,
                                  width: 120,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  DarkGrey),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                          ))),
                                      onPressed: () {},
                                      child: Text("Recharge",
                                          style: TextStyle(color: white)))),
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: Text(
                                  "More Details",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Blue,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Data Balance",
                                style: TextStyle(fontSize: 14),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: RichText(
                                    text: TextSpan(
                                        text: "1024 ",
                                        style: GoogleFonts.poppins(
                                            color: black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                      TextSpan(
                                          text: "MB",
                                          style: GoogleFonts.poppins(
                                              color: MainRed,
                                              fontWeight: FontWeight.bold))
                                    ])),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 40,
                                width: 120,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              side: BorderSide(
                                                  color: DarkGrey)))),
                                  onPressed: () {},
                                  child: Text(
                                    "Recharge",
                                    style: TextStyle(color: DarkGrey),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Container(
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(10)),
                  height: screenSize.height / 3,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Best Offers",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              "All Offers",
                              style: TextStyle(
                                  color: Blue, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                AirtelBundles(
                                  dataAmount: "2 GB",
                                  dataValidity: "Validity 2 Days",
                                  price: "2000",
                                ),
                                AirtelBundles(
                                  dataAmount: "1.5 GB",
                                  dataValidity: "Validity 2 Days",
                                  price: "2000",
                                ),
                                AirtelBundles(
                                  dataAmount: "5 GB",
                                  dataValidity: "Validity 2 Days",
                                  price: "20000",
                                ),
                                AirtelBundles(
                                  dataAmount: "10 GB",
                                  dataValidity: "Validity 2 Days",
                                  price: "25000",
                                ),
                                AirtelBundles(
                                  dataAmount: "1 GB",
                                  dataValidity: "Validity 7 Days",
                                  price: "2000",
                                ),
                                AirtelBundles(
                                  dataAmount: "2 GB",
                                  dataValidity: "Validity 2 Days",
                                  price: "2000",
                                ),
                                AirtelBundles(
                                  dataAmount: "2 GB",
                                  dataValidity: "Validity 2 Days",
                                  price: "2000",
                                ),
                                AirtelBundles(
                                  dataAmount: "2 GB",
                                  dataValidity: "Validity 2 Days",
                                  price: "2000",
                                ),
                                AirtelBundles(
                                  dataAmount: "2 GB",
                                  dataValidity: "Validity 2 Days",
                                  price: "2000",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: screenSize.width,
              child: Container(
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(10)),
                  height: screenSize.height / 6,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Quick Actions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            QuickActions(
                              title: "Recharge",
                              icon: Icons.battery_charging_full_rounded,
                            ),
                            QuickActions(
                                title: "Pay Bill",
                                icon: Icons.calculate_outlined),
                            QuickActions(
                              title: "Buy Bundles",
                              icon: Icons.list,
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ))
      ],
    );
  }
}
