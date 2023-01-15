import 'package:flutter/material.dart';

import '../pages/driver_profile.dart';
import '../pages/lift_request.dart';
import '../pages/home.dart';
import '../pages/map_screen.dart';
import '../pages/cancel_lift.dart';

class MainScreen extends StatefulWidget {



  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{
  TabController? tabController;
  int selectedIndex =0;
  onItemClicked(int index){
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });

  }
  @override
  void initState(){
    super.initState();
    tabController =  TabController(length: 5, vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
          controller: tabController,
        children:  [
          const Home(),
          mapScreen(26.2708, 28.1123),
          const CancelLift(),
          const DriverProfile(),
          const RequestALift(),
         /// to be added for security reasons
           ///const FaceDetection(),
        ],

        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: "Driver Map "
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.cancel),
              label: "Cancel Lift",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Driver profile"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.car_rental_outlined),
              label: "Request A Lift"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.face_outlined),
              label: "Face Detection option"
          ),

        ],
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor:Colors.black,
        type:BottomNavigationBarType.fixed,
        selectedLabelStyle:const TextStyle(fontSize: 20),
        showSelectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),


      );


  }
}
