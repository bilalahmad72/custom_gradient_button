import 'package:custom_gredient_button/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,

      /// appbar
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Custom Gradient Button'),
        elevation: 0.0,
      ),

      /// body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          const SizedBox(height: 40.0),

          CustomButton(
              onTap: (){},
          ),
          const SizedBox(height: 40.0),
          CustomButton(
            onTap: (){},
            firstColor: Colors.deepPurple,
            secondColor: Colors.deepPurpleAccent,
          ),

          const SizedBox(height: 40.0),
          CustomButton(
            onTap: (){},
            firstColor: Colors.red,
            secondColor: Colors.redAccent,
          ),

          const SizedBox(height: 40.0),
          CustomButton(
            onTap: (){},
            firstColor: Colors.orange,
            secondColor: Colors.orangeAccent,
          ),

          const SizedBox(height: 40.0),
          CustomButton(
            onTap: (){},
            firstColor: Colors.pink,
            secondColor: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}
