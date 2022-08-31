import 'package:flutter/material.dart';
class BMIResultScreen extends StatelessWidget {
  final int ?result;
  final int ?age;
  final bool ?isMale;

  BMIResultScreen({
   @required this.result,
   @required this.age,
@required    this.isMale,

});
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_left_outlined),
      ),
        title: Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'Gender :${ isMale! ?'MALE':'Female'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),

            ),
            Text(
              'Result : ${result}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),

            ),
            Text(
              'Age : ${age}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),

            ),

          ],
        ),
      ),
    );
  }
}
