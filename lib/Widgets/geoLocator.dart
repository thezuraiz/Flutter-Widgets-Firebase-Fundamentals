// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
//
// class GeoLocatorWid extends StatefulWidget {
//   const GeoLocatorWid({super.key});
//
//   @override
//   State<GeoLocatorWid> createState() => _GeoLocatorWidState();
// }
//
// class _GeoLocatorWidState extends State<GeoLocatorWid> {
//   Position? position;
//
//   fetchPosition() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       return Future.error('Location services are disabled.');
//     }
//
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return Future.error('Location permissions are denied');
//       }
//     }
//
//     if (permission == LocationPermission.deniedForever) {
//       return Future.error(
//           'Location permissions are permanently denied, we cannot request permissions.');
//     }
//     Position currentposition = await Geolocator.getCurrentPosition();
//     setState(() {
//       position = currentposition;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Location')),
//       body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Text(position == null ? 'Location' : position.toString()),
//             ElevatedButton(
//                 onPressed: () => fetchPosition(), child: Text('Find Location'))
//           ])),
//     );
//   }
// }
