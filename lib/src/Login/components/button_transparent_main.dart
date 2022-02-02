import 'package:flutter/material.dart';
import '../../util/value/constant_colors.dart';

class ButtonTransparent extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  final double marginLeft;
  final double marginRight;
  final double height;
  final double? width;
  final double fontSize;
  final String pathImage;

  const ButtonTransparent({
    required this.callback,
    required this.text,
    required this.marginLeft,
    required this.marginRight,
    required this.height,
    this.width,
    required this.fontSize,
    required this.pathImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        margin: EdgeInsets.only(
          left: marginLeft,
          right: marginRight,
        ),
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(25),
            bottom: Radius.circular(25),
          ),
          color: Colors.transparent,
          border: Border.all(width: 2.5, color: ConstColors.colorWhite),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Image.asset(
                pathImage,
                width: 24.0,
                height: 24.0,
              ),
            ),
       
            Row(
            
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
               const SizedBox(width: 38,),
                Text(
                  text,
                  style: TextStyle(
                    color: ConstColors.colorWhite,
                    fontWeight: FontWeight.w400,
                    fontSize: fontSize,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
