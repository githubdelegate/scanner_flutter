import 'package:flutter/material.dart';

class ImageTextButton extends StatelessWidget {
  final String buttonText;
  final double imageSize;
  final String imageUrl;
  final void Function()? onPressed;

  const ImageTextButton({
    Key? key,
    this.buttonText = "",
    this.imageSize = 0,
    this.imageUrl = "",
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              height: imageSize,
              width: imageSize,
            ),
            SizedBox(height: 16.0),
            Text(
              buttonText,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
