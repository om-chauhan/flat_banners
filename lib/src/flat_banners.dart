import 'package:flutter/material.dart';

class FlatBanners extends StatelessWidget {
  const FlatBanners({
    Key? key,
    this.subtitle,
    this.title,
    this.image,
    this.btnText,
    this.gradientColors = const [
      Colors.blueGrey,
      Colors.blueAccent,
    ],
    this.imageHeight,
    this.imageWidth = 65,
    this.startGradientAlignment = Alignment.topLeft,
    this.endGradientAlignment = Alignment.bottomRight,
    this.actionBtnBgColor = const Color(0xff5957AB),
    this.onPressed,
  }) : super(key: key);
  final String? subtitle;
  final String? title;
  final String? image;
  final String? btnText;
  final Color? actionBtnBgColor;
  final List<Color> gradientColors;
  final double? imageHeight;
  final double? imageWidth;
  final AlignmentGeometry startGradientAlignment;
  final AlignmentGeometry endGradientAlignment;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: gradientColors,
            begin: startGradientAlignment,
            end: endGradientAlignment,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subtitle ?? 'Subtitle goes here...',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    title ?? 'Title goes here....',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                      color: actionBtnBgColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      btnText ?? 'Action text...',
                      style: const TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset(
                image ?? 'assets/icons/photo.png',
                height: imageHeight,
                width: imageWidth,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
