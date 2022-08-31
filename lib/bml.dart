
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'bmi_result_screen.dart';


class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  bool isMale=true;
 double _value=120;
int weight=40;
  int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'BMI CALCULATE',
        ),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
            children: [
 Expanded(
   child: GestureDetector(
     onTap: (){
       setState(() {
         isMale=true;
       });
     },
     child: Container(

       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
         color:isMale?Colors.blue: Colors.grey,
       ),
       child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SvgPicture.asset('images/venus-2-svgrepo-com.svg',height: 90,width: 90,),
              SizedBox(height: 25,),
              Text(
                'MALE',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),)
           ]
       ),
     ),
   ),
 ),
              SizedBox(width: 20,),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      isMale=false;

                    });
                  },
                  child: Container(

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: !isMale?Colors.blue:Colors.grey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
              SvgPicture.asset('images/mars-svgrepo-com.svg',height: 90,width: 90,),
                        // Image(image:AssetImage('images/outdoor-svgrepo-com.svg'),height: 90,width: 90,),
                        SizedBox(height: 25,),
                        Text(
                          'FEMALE',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
    ),
          Expanded(

             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.grey,
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('HEIGHT',
                     style:TextStyle(
                   fontWeight: FontWeight.bold,
                       fontSize: 25,
                     )
    ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.baseline,
                       textBaseline: TextBaseline.alphabetic,

                       children: [
                         Text('${_value.round()}',style: TextStyle(
                           fontSize: 50,
                           fontWeight: FontWeight.bold
                         ),),
                         Text('CM',style: TextStyle(
                             fontSize:20,
                             fontWeight: FontWeight.bold
                         ),),]),
          Slider(value:_value,min:30,max: 220,onChanged: (value){
            setState(() {
              _value=value;
            });

          },
)
    ]),
               ),
             )),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(

                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            'Age',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          ),
                          SizedBox(height: 15,),
                          Text(
                            '$age',style:TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){setState(() {
                                age++;
                              });},heroTag: 'age+',child: Icon(Icons.add),mini: true,),
                              SizedBox(width: 15,),
                              FloatingActionButton(onPressed: (){setState(() {
                              age--;
                              });},heroTag: 'age-',child: Icon(Icons.remove),mini: true,)

                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),

                    ),
                  ),
                  SizedBox(width: 30,),
                  Expanded(
                    child: Container(

                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            'WEIGHT',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          ),
                          SizedBox(height: 15,),
                          Text(
                            '$weight',style:TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){setState(() {
                                weight++;
                              });},heroTag: 'weight+',child: Icon(Icons.add),mini: true,),
                              SizedBox(width: 15,),
                              FloatingActionButton(onPressed: (){setState(() {
                                weight--;
                              });},heroTag: 'weight-',child: Icon(Icons.remove),mini: true,)

                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),

                    ),
                  )
                ],


              ),
            ),
          ),
          Container(
            color: Colors.blue,
            width: double.infinity,
            child:  MaterialButton(onPressed: (){
              double result=weight / pow(_value / 100, 2);
              print(result.round());
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BMIResultScreen(age:age ,result: result.round(),isMale: isMale,)));

            }, child:Text('CALCULATE',style: TextStyle(
                color: Colors.white
            ),),
            ),
          ),

        ]
            ),
    );
  }
}