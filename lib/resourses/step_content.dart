import 'package:flutter/material.dart';

class StepContent extends StatelessWidget {
  const StepContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      borderRadius:const BorderRadius.only(
        topRight: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
        bottomLeft: Radius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text('Pickup',
                style: TextStyle(
                  color: Colors.black
                ),),
                Icon(Icons.wrap_text)
              ],
            ),
           const SizedBox(height: 8.0,),
            Text('27 Runte Point Sunte 876',
            style: TextStyle(
              color: Colors.grey[700]
            ),
            ),
            const SizedBox(height: 12.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                Text('Upload Photos',
                style: TextStyle(
                  color: Colors.indigo
                ),
                ),
                Text('Doc\'s Veiwing',
                  style: TextStyle(
                      color: Colors.indigo
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
