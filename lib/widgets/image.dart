import 'package:flutter/cupertino.dart';

class PngImage extends StatelessWidget {
  final String imageLocation;
  const PngImage({Key? key, required this.imageLocation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Image(
        image: AssetImage(imageLocation),
        width: 70,
        height: 40,
      ),
    );
  }
}
