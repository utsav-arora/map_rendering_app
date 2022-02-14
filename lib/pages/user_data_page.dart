import 'package:flutter/material.dart';
import 'package:map_rendering/resourses/user_card.dart';
import 'package:map_rendering/resourses/data.dart';

class UserDataPage extends StatefulWidget {
  const UserDataPage({Key? key}) : super(key: key);

  @override
  _UserDataPageState createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
  List records=[];
  bool _loading= true;

 Future getRecords() async{
   Data instance = Data();
   await instance.getUserData();
   setState(() {
     records = instance.allData;
     _loading= false;
   });
 }

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRecords();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body:SafeArea(
        child: Column(
          children: [
            Padding(padding:const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              children:const [


                     CircleAvatar(
                      backgroundImage: AssetImage('assets/default.png'),
                      radius: 30.0,
                    ),

                SizedBox(height: 10.0,),
                Text('User Records',
                style: TextStyle(
                  fontSize: 30.0,
                ),
                ),
              ],
            ),
            ),
            Expanded(child: Container(
              width: MediaQuery.of(context).size.width,
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)
                ),
              ),
              child: _loading ?const CircularProgressIndicator():
              ListView.builder(itemBuilder: (BuildContext context , int index){
                return SizedBox(
                  child: UserCard(lastName: records[index].lastName,
                      firstName: records[index].firstName,
                      avatar: records[index].avatar,
                      email: records[index].email),
                );
              },
              itemCount: records.length,
                shrinkWrap: true,
                physics:const ClampingScrollPhysics(),
              ),

            ),),
          ],
        ),
      ),
    );
  }
}
