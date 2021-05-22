import 'package:age/age.dart';
import 'package:age_calculator/Services/age_calculation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Calculator_Screen extends StatefulWidget {
  const Calculator_Screen({Key key}) : super(key: key);

  @override
  _Calculator_ScreenState createState() => _Calculator_ScreenState();
}

class _Calculator_ScreenState extends State<Calculator_Screen> {

  DateTime _todayDateTime = DateTime.now();
  DateTime _dateOfBirth = DateTime(2000,1,1);
  AgeDuration _ageDuration;
  AgeDuration _nextBirthday;
  int _nextBirthdayWeek;


  List<String> _months = [
    "months",
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  List<String> _weeks =[
    "weeks"
    "Saturday",
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday"
  ];


  Future<Null> _selectTodaysDate(BuildContext context) async{
    final DateTime _datePicker = await showDatePicker(context: context,
        initialDate: _todayDateTime,
        firstDate: _dateOfBirth,
        lastDate: DateTime(2101));

    if(_datePicker != null && _datePicker != _todayDateTime ){
      setState(() {

        _todayDateTime = _datePicker;
      });
    }


  }
  Future<Null> _selectDOBDate(BuildContext context) async{
    final DateTime _datePicker = await showDatePicker(context: context,
        initialDate: _dateOfBirth,
        firstDate: DateTime(1901) ,
        lastDate: _todayDateTime);

    if(_datePicker != null && _datePicker != _todayDateTime){
      setState(() {

        _dateOfBirth = _datePicker;
        _ageDuration = Age_Calculation().calculateAge(_todayDateTime, _dateOfBirth);
        _nextBirthday = Age_Calculation().nextBirthday(_todayDateTime, _dateOfBirth);
        _nextBirthdayWeek = Age_Calculation().nextBirthdayWeek(_todayDateTime, _dateOfBirth);
      });
    }


  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ageDuration = Age_Calculation().calculateAge(_todayDateTime, _dateOfBirth);
    _nextBirthday = Age_Calculation().nextBirthday(_todayDateTime, _dateOfBirth);
    _nextBirthdayWeek = Age_Calculation().nextBirthdayWeek(_todayDateTime, _dateOfBirth);

  }





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[500],


        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            children:<Widget> [
             SizedBox(height: 50,width: double.maxFinite,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children:<Widget> [

                 Text("CALCULATE AGE",
                     style: TextStyle(
                         fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black38),
                     textAlign: TextAlign.center,)


               ],


             ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.fromLTRB(80,0,80,0),
                child: Container(
                  height: 2,
                  width: double.maxFinite,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 20,width: double.maxFinite,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Today :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                      textAlign: TextAlign.center,),
                  ),
                  GestureDetector(
                    onTap: (){
                      _selectTodaysDate(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("${_todayDateTime.day} ${_months[_todayDateTime.month]} ${_todayDateTime.year}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20,color: Colors.brown[900]),
                            textAlign: TextAlign.center,),

                          SizedBox(width: 5,),

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(Icons.calendar_today_outlined,color: Colors.black,size: 18,),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],


              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Date of Birth :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                      textAlign: TextAlign.center,),
                  ),
                  GestureDetector(
                    onTap: (){
                      _selectDOBDate(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("${_dateOfBirth.day} ${_months[_dateOfBirth.month]} ${_dateOfBirth.year}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20,color: Colors.brown[900]),
                            textAlign: TextAlign.center,),

                          SizedBox(width: 5,),

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(Icons.calendar_today_outlined,color: Colors.black,size: 18,),
                          ),
                        ],
                      ),
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
                    color: Color(0xff90a4ae),
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
                                  fontSize: 23,color: Colors.brown,fontWeight: FontWeight.bold

                                ),),



                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:<Widget> [
                                    Text("${_ageDuration.years}",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.indigo[700]),),

                                    Padding(
                                      padding:  EdgeInsets.only(bottom: 15,left: 5),
                                      child: Text("Years",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.black),),
                                    ),







                                  ],



                                ),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:<Widget> [

                                    Text("${_ageDuration.months} months  |  ${_ageDuration.days} days ",style: TextStyle(color: Colors.brown[900],fontSize: 20,fontWeight: FontWeight.w500),),



                                    // Text("I love you ",style: TextStyle(),),


                                  ],


                                ),






                              ],




                            ),
                          ),
                          Container(
                            height: 170,
                            width: 2,
                            color: Colors.cyan[700],

                          ),
                          Container(
                            height: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget> [

                                Text("NEXT BIRTHDAY",textAlign: TextAlign.center,style: TextStyle(
                                    fontSize: 23,color: Colors.brown,fontWeight: FontWeight.bold

                                ),),

                                Icon(Icons.cake_rounded,size: 50,color: Colors.indigo[700],),
                                Text("${_weeks[_nextBirthdayWeek]}",style: TextStyle(
                                    fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold

                                ),),

                                Text("${_nextBirthday.months} months  |  ${_nextBirthday.days}  days ",style: TextStyle(color: Colors.brown[900],fontSize: 20,fontWeight: FontWeight.w500),),





                              ],



                            ),




                          ),






                        ],



                      ),
                      Container(
                        height: 2,
                        width: double.maxFinite,
                        color: Colors.cyan[700],
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("SUMMARY",style:TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26,color: Colors.green[700]),
                          textAlign: TextAlign.center,),),
                      SizedBox(height: 15,width: double.maxFinite,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget> [

                          Column(
                            children: [
                              Text("YEARS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.brown[900]),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 5,),

                              Text("${_ageDuration.years}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 28,color: Colors.indigo[700]),
                                textAlign: TextAlign.center,),
                            ],
                          ),
                          Column(
                            children: [
                              Text("MONTHS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.brown[900]),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 5,),
                              Text("${(_ageDuration.years)* 12+(_ageDuration.months)}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 28,color: Colors.indigo[700]),
                                textAlign: TextAlign.center,),
                            ],
                          ),
                          Column(
                            children: [
                              Text("WEEKS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.brown[900]),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 5,),

                              Text("${((_todayDateTime.difference(_dateOfBirth).inDays)/7).floor()}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 28,color: Colors.indigo[700]),
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
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.brown[900]),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 5,),

                              Text("${_todayDateTime.difference(_dateOfBirth).inDays}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 23,color: Colors.indigo[700]),
                                textAlign: TextAlign.center,),
                            ],
                          ),
                          Column(
                            children: [
                              Text("HOURS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.brown[900]),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 5,),
                              Text("${_todayDateTime.difference(_dateOfBirth).inHours}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 23,color: Colors.indigo[700]),
                                textAlign: TextAlign.center,),
                            ],
                          ),
                          Column(
                            children: [
                              Text("MINUTES",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.brown[900]),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 5,),

                              Text("${_todayDateTime.difference(_dateOfBirth).inMinutes}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 23,color: Colors.indigo[700]),
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
                              Text("SECONDS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.brown[900]),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 5,),

                              Text("${_todayDateTime.difference(_dateOfBirth).inSeconds}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.indigo[700]),
                                textAlign: TextAlign.center,),
                            ],
                          ),

                          Column(
                            children: [
                              Text("MILISECONDS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.brown[900]),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 5,),

                              Text("${_todayDateTime.difference(_dateOfBirth).inMilliseconds}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.indigo[700]),
                                textAlign: TextAlign.center,),
                            ],
                          ),

                          Column(
                            children: [
                              Text("MICROSECONDS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.brown[900]),
                                textAlign: TextAlign.center,),
                              SizedBox(height: 5,),
                              Text("${_todayDateTime.difference(_dateOfBirth).inMicroseconds}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: Colors.indigo[700]),
                                textAlign: TextAlign.center,),
                            ],
                          ),



                        ],



                      ),
                      SizedBox(height: 15,width: double.maxFinite,),



                    ],
                  ),



                ),
              ),

              SizedBox(height: 15,),



              Text("👨‍💻 Developed by Farhan",style: TextStyle(fontSize: 20,color: Colors.black54),)









            ],





          ),
        ),



      ),
    );
  }
}
