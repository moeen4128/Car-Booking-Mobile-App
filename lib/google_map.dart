import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Sliding Up Panel'),
      ),
      body: SlidingUpPanel(
        panel: Center(
          child: Text('Panel Content'),
        ),
        collapsed: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text('Collapsed Panel'),
          ),
        ),
        minHeight: 100,
        maxHeight: 500,
      ),
    );
  }
}


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Sliding Up Panel"),
//       ),
//       body: SlidingUpPanel(
//         backdropEnabled: true, //darken background if panel is open
//         color: Colors.transparent, //necessary if you have rounded corners for panel
//         /// panel itself
//         panel: Container(
//           decoration: BoxDecoration(
//             // background color of panel
//             color: Colors.redAccent,
//             // rounded corners of panel
//             borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0),),
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               BarIndicator(),
//               Center(
//                 child: Text("This is the sliding Widget",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         /// header of panel while collapsed
//         collapsed: Container(
//           decoration: BoxDecoration(
//             color: Colors.redAccent,
//             borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0),),
//           ),
//           child: Column(
//             children: [
//               BarIndicator(),
//               Center(
//                 child: Text("This is the collapsed Widget",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         /// widget behind panel
//         body: Center(
//           child: Text("This is the Widget behind the sliding panel",),
//         ),
//       ),
//     );
//   }
// }
//
// class BarIndicator extends StatelessWidget {
//   const BarIndicator({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(20),
//       child: Container(
//         width: 20, height: 3,
//         decoration: BoxDecoration(
//           color: Colors.white60,
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//       ),
//     );
//   }
// }










// class MyHomeScreen extends StatefulWidget {
//   @override
//   _MyHomeScreenState createState() => _MyHomeScreenState();
// }
//
// class _MyHomeScreenState extends State<MyHomeScreen> {
//   late GoogleMapController mapController;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GoogleMap(
//             onMapCreated: (controller) {
//               setState(() {
//                 mapController = controller;
//               });
//             },
//             initialCameraPosition: CameraPosition(
//               target: LatLng(37.7749, -122.4194), // Set your initial map location
//               zoom: 12,
//             ),
//           ),
//           SlidingUpPanel(
//             minHeight: 50,
//             maxHeight: 700,
//             panel: Container(
//               child: Center(
//                 child: Text('Sliding Up Panel Content'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
