import 'package:flutter/material.dart';
import 'package:map_rendering/pages/stepper_page.dart';

class JourneyBar extends StatefulWidget {
  const JourneyBar({Key? key}) : super(key: key);

  @override
  _JourneyBarState createState() => _JourneyBarState();
}

class _JourneyBarState extends State<JourneyBar> with SingleTickerProviderStateMixin {

  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Load Details'),
        centerTitle: true,
        elevation: 0.0,
        bottom: TabBar(
          controller: controller,
          tabs:const [
            Tab(
              text: 'Load Details',
            ),
            Tab(
              text: 'Stop Details',
            )
          ],
        ),
      ),
     body: TabBarView(
       controller: controller,
       children:const [
         StepperPage(),
         StepperPage(),
       ],
     ),
    );
  }
}
