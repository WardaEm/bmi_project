import 'package:flutter/material.dart';
class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        elevation: 0,
        titleSpacing: 20,
        title: Text(
          'BMI Calculator',
              style: TextStyle(
            fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        ),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [

                  Expanded(

                    child: Container(
decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
  color: Colors.grey
),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.ac_unit_rounded,size: 50,),
                          SizedBox(height: 15,),
                          Text(
                              'MALE',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Colors.grey
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.ac_unit_rounded,size: 50,),
                          SizedBox(height: 15,),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],

              ),
            )
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.black,
            ),
          ),
          Container(
            width: double.infinity,
              color: Colors.red,
              child: MaterialButton(onPressed: (){},child: Text('CALCULATE',style: TextStyle(
                color: Colors.white
              ),),))
        ],
      ),
    );
  }
}
