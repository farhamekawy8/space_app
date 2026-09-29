import 'package:flutter/material.dart';
import 'package:space_assignment/core/app_colors.dart';
import 'package:space_assignment/core/app_images.dart';
import 'package:space_assignment/core/app_texts.dart';

class UpperItemWidget extends StatelessWidget {
  const UpperItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(AppImages.moonImage,),
        Positioned.fill(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: width*0.02,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors:
                [
                  Color(0x000E0E0E),
                  AppColors.primaryColor,
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppTexts.secondTopTitle,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        AppTexts.thirdTopTitle,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),



      ],
    );
  }
}
