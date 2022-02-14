
import 'package:map_rendering/pages/journey_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  late GoogleMapController _controller;

   static const _initialCamera = CameraPosition(target: LatLng(28.7041, 77.1025),
   zoom: 16.0,
     tilt: 80,
     bearing: 30.0,

   );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [IconButton(icon :const Icon(Icons.arrow_forward_rounded),
          onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const JourneyBar(),),),
          )],
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCamera,

        myLocationButtonEnabled: true,
        compassEnabled: false,
        mapType: MapType.normal,
        zoomControlsEnabled: false,
        onMapCreated: (controller)=> _controller = controller,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> _controller.animateCamera(
            CameraUpdate.newCameraPosition(_initialCamera)
        ),
        child:const Icon(Icons.center_focus_strong),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),

    );
  }
}
