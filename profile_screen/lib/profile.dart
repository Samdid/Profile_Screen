import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen>{
  String _name = "Arnav Sharma";
  String _dob = "07 October 2000";
  String _location = "Kolkata, West Bengal";
  String _email = "samriddhodas.das8@gmail.com";
  String _education = "SRM Institute of Sience & Technology";
  String _eLocation = "Chennai";
  String _standard = "Second Year";
  String _value;
  List<String> _fields= ['Software Engineering','Software Engineerings','Software Engineeringss','Software Engineeringsss'];
  String _degree = "B-Tech Software Engineering";
  String _yr = "2019-2023";
  double _percent = 65;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            width: MediaQuery.of(context).size.width*1,

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30))
             ),

            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 0,

                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        debugPrint('');
                      },
                          icon: Icon(Icons.arrow_back, color: Colors.white,size: 35,)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.015,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.35,
                      ),
                      Text(
                        "Sign out",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.login, color: Colors.white,size: 35,)),
                    ],
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 15,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            minRadius: 50.0,
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage: NetworkImage(
                                  'https://avatars0.githubusercontent.com/u/28812093?s=460&u=06471c90e03cfd8ce2855d217d157c93060da490&v=4'),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(

                                children: [
                                  Text(
                                    _name, style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Target Industry : ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  new DropdownButton<String>(
                                    dropdownColor: Colors.black,
                                    value: _value,
                                      onChanged: (newValue){
                                      setState(() {
                                        _value = newValue;
                                      });
                                      },
                                      items: _fields.map((value){
                                        return new DropdownMenuItem(
                                          value: value,
                                            child: new Text(value, style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),),
                                        );
                                      }).toList(),


                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height*0.01,
                        width: MediaQuery.of(context).size.width*0.7,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: LinearProgressIndicator(

                            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                            value: _percent/10,
                            backgroundColor: Colors.white,

                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "${_percent*10}% completed",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.15,
            child: Card(
              elevation: 1,
              child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 40,
                      child: Row(
                        children: [
                          Text(
                            "Personal",
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                        ],
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 10,
                      child: Row(
                        children: [
                          Text(
                            "Date of Birth : ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            _dob,
                            style: TextStyle(
                                fontSize: 15,
                              color: Colors.black,
                                //fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 65,
                      left: 10,
                      child: Row(
                        children: [
                          Text(
                            "Email : ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            _email,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 90,
                      left: 10,
                      child: Row(
                        children: [
                          Text(
                            "Location : ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                            ),

                          ),
                          Text(
                            _location,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.167,

                    child: Card(
                      elevation: 1,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 10,
                            child: Row(
                              children: [
                                Icon(Icons.school, color: Colors.blue, size: 30,),
                                SizedBox(width:10),
                                Text(
                                  "Education",
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.40,),
                                IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                              ],
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 10,
                            child: Text(
                              "$_value : ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Positioned(
                            top: 60,
                            left: 10,
                            child: Text(
                              _education,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 10,
                            child: Row(
                              children: [
                                Text(
                                  "Standard : ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  _standard,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    //fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 105,
                            left: 10,
                            child: Row(
                              children: [
                                Text(
                                  "Location : ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  _eLocation,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    //fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.2,
                    child: Card(
                      elevation: 1,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 40,
                            child: Row(
                              children: [
                                Text(
                                  "Experience",
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.40,),
                                IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                              ],
                            ),
                          ),
                          Positioned(
                            top: 50,
                            left: 10,
                            child: Text(
                              "$_degree : ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 10,
                            child: Text(
                              "$_education ($_yr)",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            left: 10,
                            child: Text(
                              "$_degree : ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Positioned(
                            top: 120,
                            left: 10,
                            child: Text(
                              "$_education ($_yr)",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                  )
                ],
              )
          ),

        ],
      ),
    );
  }
}