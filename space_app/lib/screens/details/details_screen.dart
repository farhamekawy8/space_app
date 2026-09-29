import 'package:flutter/material.dart';
import 'package:space_assignment/core/app_colors.dart';
import 'package:space_assignment/core/app_texts.dart';
import 'package:space_assignment/models/planet_info.dart';
import 'package:space_assignment/screens/details/widgets/planet_info.dart';
import 'package:space_assignment/screens/details/widgets/planet_title.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as PlanetInfo;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          PlanetTitle(name: args.name, title: args.title,),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                Image.asset(args.image),
                Text(AppTexts.about,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text(args.about,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                PlanetDetails(title: AppTexts.distanceFromSun, value: args.distanceFromSun,),
                PlanetDetails(title: AppTexts.lengthOfDay, value: args.lengthOfDay,),
                PlanetDetails(title: AppTexts.orbitalPeriod, value: args.orbitalPeriod),
                PlanetDetails(title: AppTexts.radius, value: args.radius),
                PlanetDetails(title: AppTexts.mass, value:  args.mass),
                PlanetDetails(title: AppTexts.gravity, value: args.gravity),
                PlanetDetails(title: AppTexts.surfaceArea, value: args.surfaceArea,),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
