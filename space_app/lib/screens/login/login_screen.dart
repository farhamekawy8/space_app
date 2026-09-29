import 'package:flutter/material.dart';
import 'package:space_assignment/core/app_colors.dart';
import 'package:space_assignment/core/app_images.dart';
import 'package:space_assignment/core/app_routes.dart';
import 'package:space_assignment/core/app_texts.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(AppImages.mainImage,
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(AppTexts.firstTitle,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, AppRoutes.homeRoute);
                    },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 18,
                    ),
                    backgroundColor: AppColors.redColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29),
                    )

                  ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                      ),
                      child: Row(
                        children: [
                          Text(AppTexts.secondTopTitle,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

}