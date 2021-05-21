import 'package:flutter/material.dart';

class Calculator_Screen extends StatefulWidget {
  const Calculator_Screen({Key key}) : super(key: key);

  @override
  _Calculator_ScreenState createState() => _Calculator_ScreenState();
}

class _Calculator_ScreenState extends State<Calculator_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,


        body: Column(

          children:<Widget> [
           SizedBox(height: 50,width: double.maxFinite,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget> [

               Text("AGE CALCULATOR",
                   style: TextStyle(
                       fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white54),
                   textAlign: TextAlign.center,)


             ],


           ),
            SizedBox(height: 20,width: double.maxFinite,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Today",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white54),
                    textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text("21 December 2021",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white54),
                        textAlign: TextAlign.center,),

                      SizedBox(width: 5,),

                      Icon(Icons.calendar_today_outlined,color: Colors.white54,size: 18,),
                    ],
                  ),
                ),

              ],


            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Date of Birth",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white54),
                    textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text("21 December 2021",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white54),
                        textAlign: TextAlign.center,),

                      SizedBox(width: 5,),

                      Icon(Icons.calendar_today_outlined,color: Colors.white54,size: 18,),
                    ],
                  ),
                ),

              ],


            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Container(

                margin: EdgeInsets.symmetric(vertical: 40.0),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xff888888),
                  borderRadius: BorderRadius.circular(15),


                ),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children:<Widget> [

                        Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget> [
                              Text("AGE",textAlign: TextAlign.center,style: TextStyle(
                                fontSize: 20,color: Colors.white54,fontWeight: FontWeight.w500

                              ),),

                              // SizedBox(height: 15,),


                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children:<Widget> [
                                  Text("23",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold),),

                                  Padding(
                                    padding:  EdgeInsets.only(bottom: 15,left: 5),
                                    child: Text("Years",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white54),),
                                  ),







                                ],



                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children:<Widget> [

                                  Text("5 months  |  15 days ",style: TextStyle(color: Colors.white54,fontSize: 20,fontWeight: FontWeight.w500),),




                                ],


                              ),






                            ],




                          ),
                        ),
                        Container(
                          height: 170,
                          width: 2,
                          color: Colors.white54,

                        ),
                        Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget> [

                              Text("NEXT BIRTHDAY",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: 20,color: Colors.white54,fontWeight: FontWeight.w500

                              ),),

                              Icon(Icons.cake_rounded,size: 45,),
                              Text("Saturday",style: TextStyle(
                                  fontSize: 22,color: Colors.white54,fontWeight: FontWeight.w500

                              ),),

                              Text("2 months  |  7 days ",style: TextStyle(color: Colors.white54,fontSize: 20,fontWeight: FontWeight.w500),),





                            ],



                          ),




                        ),






                      ],



                    ),
                    Container(
                      height: 2,
                      width: double.maxFinite,
                      color: Colors.white54,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("SUMMARY",style:TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 26,color: Colors.black),
                        textAlign: TextAlign.center,),),
                    SizedBox(height: 15,width: double.maxFinite,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget> [

                        Column(
                          children: [
                            Text("YEARS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white54),
                              textAlign: TextAlign.center,),
                            SizedBox(height: 5,),

                            Text("24",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28,color: Colors.black),
                              textAlign: TextAlign.center,),
                          ],
                        ),
                        Column(
                          children: [
                            Text("MONTHS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white54),
                              textAlign: TextAlign.center,),
                            SizedBox(height: 5,),
                            Text("6541",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28,color: Colors.black),
                              textAlign: TextAlign.center,),
                          ],
                        ),
                        Column(
                          children: [
                            Text("WEEKS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white54),
                              textAlign: TextAlign.center,),
                            SizedBox(height: 5,),

                            Text("465210",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28,color: Colors.black),
                              textAlign: TextAlign.center,),
                          ],
                        ),



                      ],



                    ),
                    SizedBox(height: 15,width: double.maxFinite,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget> [

                        Column(
                          children: [
                            Text("DAYS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white54),
                              textAlign: TextAlign.center,),
                            SizedBox(height: 5,),

                            Text("24",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28,color: Colors.black),
                              textAlign: TextAlign.center,),
                          ],
                        ),
                        Column(
                          children: [
                            Text("HOURS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white54),
                              textAlign: TextAlign.center,),
                            SizedBox(height: 5,),
                            Text("6541",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28,color: Colors.black),
                              textAlign: TextAlign.center,),
                          ],
                        ),
                        Column(
                          children: [
                            Text("SECONDS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white54),
                              textAlign: TextAlign.center,),
                            SizedBox(height: 5,),

                            Text("465210",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28,color: Colors.black),
                              textAlign: TextAlign.center,),
                          ],
                        ),



                      ],



                    ),
                    SizedBox(height: 15,width: double.maxFinite,),



                  ],
                ),



              ),
            )











          ],





        ),



      ),
    );
  }
}
