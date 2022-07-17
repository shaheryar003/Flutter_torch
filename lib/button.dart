import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
import 'colorscheme.dart';
import 'main.dart';


class button extends StatelessWidget {
  final controller = TorchController();

final ontap;
bool isButtonPressed=false;
button({this.ontap,required this.isButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 160,
        width: 160,
        child: Icon(Icons.power_settings_new,
        size: 60,
        color: isButtonPressed ?onColor :offColor,
        ),
    
        decoration: BoxDecoration(
          color: darkmode ? backgroundcolorscheme:BlackClr ,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
           color:  isButtonPressed ? Colors.grey.shade200:Colors.grey.shade300
          ),

          boxShadow: isButtonPressed ?[

            //NO SHADOW IF BUTTON PRESSED
          ]: [

            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(6,6),
              blurRadius: 15,
              spreadRadius: 1,
            ),

           
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(-6,-6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
          

          
        ),
        
      ),
    );



  }

}