import 'package:flutter/material.dart';
import '../../util/value/constant_colors.dart';

class DialogCustom extends StatelessWidget {
  final String title;
  final String description;
  final double top;
  final double bottom;
  final double right;
  final double left;
  final double radius;

  const DialogCustom({
    required this.title,
    required this.description,
    required this.top,
    required this.bottom,
    required this.right,
    required this.left,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Column(
        children: <Widget>[
         const SizedBox(height: 150.0,),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(
                top: top,
                bottom: bottom,
                left: left,
                right: right,
              ),
              margin: const EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                color: ConstColors.colorBlush,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(radius),
                boxShadow: const [
                  BoxShadow(
                    color: ConstColors.colorFleryRose,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, // To make the card compact
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 34.0,
                       color: ConstColors.colorWhite,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: ConstColors.colorWhite,
                      fontSize: 21.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      child: const Text(
                        'Entendi',
                        style: TextStyle(
                          fontSize: 18.0,
                           color: ConstColors.colorWhite,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
