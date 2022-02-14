import 'package:flutter/material.dart';

class  UserCard extends StatelessWidget {

  String avatar;
  String firstName;
  String lastName;
  String email;
  UserCard({Key? key,
  required this.lastName,
    required this.firstName,
    required this.avatar,
    required this.email
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const EdgeInsets.all(12.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image(image: NetworkImage(avatar
              ,),
              height: 200,
              width: 400,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10.0,),
          Text(email,style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,color: Colors.black),),
         const SizedBox(height: 10.0,),
          Text('$firstName $lastName',style: TextStyle( fontSize: 15.0,color: Colors.grey[800]),),
        ],
      ),
    );
  }
}
