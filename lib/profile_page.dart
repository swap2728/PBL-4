import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              child: new Image.asset(
                'assest/bg.png',fit: BoxFit.cover,height: double.infinity,width: double.infinity,
              ),
              // height: double.infinity,
              // width: double.infinity,
            ),
            SafeArea(
              child: Center(
                child: GlassmorphicContainer(
                  width: double.infinity,
                  height: double.infinity,
                  borderRadius:0,
                  blur: 0,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.1),
                        Color(0xFFFFFFFF).withOpacity(0.05),
                      ],
                      stops: [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.5),
                      Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child:Column(

                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Expanded(
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Color(0XFFCACACA),
                            backgroundImage: AssetImage('assest/image 8.png'),
                          ),
                        ),
                      ),
                      Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 140,
                        height: 30,

                        child: Align(
                          alignment: Alignment.center,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                "BAKER XYZ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.edit,
                              )
                            ],
                          ),
                        ),
                      ),


                      Expanded(

                        child: Container(

                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: <Widget>[
                              Expanded(

                                child: Icon(
                                  Icons.favorite,
                                ),
                              ),

                              Expanded(
                                child: Icon(
                                  Icons.date_range,
                                ),
                              ),

                              Expanded(
                                child: Icon(
                                  Icons.phone,
                                ),
                              ),


                              Expanded(
                                child: Icon(
                                  Icons.location_pin,
                                ),
                              ),

                              // SizedBox(
                              //   height: 20,
                              // ),

                              Expanded(
                                child: Icon(
                                  Icons.mail,
                                ),
                              ),

                              Expanded(child: Row(
                                children: <Widget>[
                                  Expanded(child:
                                  Text("empty"),

                                  ),

                                  Expanded(child:
                                  Text("empty"),

                                  ),

                                  Expanded(child:
                                  Text("empty"),

                                  ),

                                  Expanded(child:
                                  Text("empty"),

                                  ),
                                ],
                              ),),



                            ],
                          ),
                        ),),


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

