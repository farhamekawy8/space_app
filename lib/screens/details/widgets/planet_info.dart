import 'package:flutter/material.dart';
import 'package:space_assignment/core/app_colors.dart';

class PlanetDetails extends StatelessWidget {
  String title;
  String value;
   PlanetDetails({super.key,required this.title, this.value = '6'});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8
      ),
      child: Text('$title : $value',
        style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
