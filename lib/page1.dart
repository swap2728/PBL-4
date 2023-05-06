import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage('assest/bg.png'),
              fit: BoxFit.cover,
            )
          ),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index)
            {
              return Padding(padding:EdgeInsets.all(10),
                child: GlassmorphicContainer(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  width: MediaQuery.of(context).size.width*0.3,
                  height: MediaQuery.of(context).size.height *0.15,
                  blur: 0.5,
                  borderRadius: 20,
                  border: 15,
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF000000).withOpacity(0),
                      const Color(0xFF000000).withOpacity(0),
                    ],
                  ),
                  linearGradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        const Color(0xFFffffff).withOpacity(0.4),
                        const Color(0xFFffffff).withOpacity(0.2),
                      ],
                      stops: const [
                        0.1,
                        1,
                      ]),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 30),
                                child: Text('inventory managenment',textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 20,color:Colors.black.withOpacity(0.6),fontWeight: FontWeight.w900),),
                            ),
                          ),
                           Center(
                              child: Container(
                                 height: 120.0,
                                 width: 120.0,
                                 decoration: BoxDecoration(
                                   image: DecorationImage(
                                     image: AssetImage(
                                         'assest/image111.jpg'),
                                     fit: BoxFit.fill,
                                   ),
                                   // shape: BoxShape.circle,
                                   borderRadius: BorderRadius.circular(20),
                                   border: Border.all(
                                     width: 3,
                                     color: Colors.black,
                                   )
                                 ),
                              ),
                          )
                        ],
                      ),
                    ),

                  ),
                ),
              );
            },
          ),
        ),

    );
  }
}
