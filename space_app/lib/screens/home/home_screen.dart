import 'package:flutter/material.dart';
import 'package:space_assignment/core/app_colors.dart';
import 'package:space_assignment/core/app_routes.dart';
import 'package:space_assignment/core/app_texts.dart';
import 'package:space_assignment/models/planet_info.dart';
import 'package:space_assignment/screens/home/widgets/upper_Item_widget.dart';

class HomeScreen extends StatefulWidget{

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(initialPage: 0);

  int index = 0;

  @override
  void initState() {
    pageController.addListener(listenOnPageChange);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          UpperItemWidget(),
          Expanded(
            child: PageView.builder(
              controller: pageController,
                itemBuilder: (context, index) =>
                    Image.asset(PlanetInfo.planets[index % 9].image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.redColor,
                    shape: CircleBorder(),
                  ),
                    onPressed: (){
                      if(pageController.page!.toInt() == 0){
                        return ;
                      }
                      pageController.animateToPage(
                          pageController.page!.toInt() - 1,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.arrow_back,
                        size: 25,
                      ),
                    ),
                ),

                Text(PlanetInfo.planets[index].name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.redColor,
                      shape: CircleBorder(),
                    ),
                    onPressed: (){
                      pageController.animateToPage(
                          pageController.page!.toInt()+1,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn);

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.arrow_forward,
                        size: 25,
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, AppRoutes.detailsRoute, arguments: PlanetInfo.planets[index]);
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  backgroundColor: AppColors.redColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  )

              ),
              child: Row(
                spacing: width*0.02,
                children: [
                  Text(AppTexts.secondTopTitle,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  Text(PlanetInfo.planets[index].name,
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
        ],
      ),
    );
  }

  void listenOnPageChange(){
    if(pageController.page! % 1 == 0){
      index = pageController.page!.toInt() % 9;
      setState(() {});
    }
  }
}