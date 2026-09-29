import 'package:flutter/material.dart';
import 'package:space_assignment/core/app_colors.dart';
import 'package:space_assignment/core/app_images.dart';

class PlanetTitle extends StatelessWidget {
  String name;
  String title;
   PlanetTitle({super.key, required this.name, required this.title});

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
                  // AppColors.transparentColor
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.redColor,
                            shape: CircleBorder(),
                          ),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back,
                            size: 25,
                          ),
                        ),

                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                       title,
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
