import 'package:airtel_ui/utils/theme.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  final String title;
  final IconData icon;
  const QuickActions({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: GreyForText,
                    offset: const Offset(
                      0.0,
                      4.0,
                    ),
                    blurRadius: 6.0,
                    spreadRadius: 0.5,
                  )
                ]),
            child: Icon(
              icon,
              size: 35,
              color: MainRed,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(title),
          )
        ],
      ),
    );
  }
}