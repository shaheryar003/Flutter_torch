import 'package:flutter/material.dart';
import 'button.dart';
import 'package:torch_controller/torch_controller.dart';
import 'colorscheme.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
bool darkmode=true;
void main(){
  TorchController().initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //use MaterialApp() widget like this
      home: HomePage() //create new widget class for this 'home' to 
                   // escape 'No MediaQuery widget found' error
    );
  }
}

//create new class for "home" property of MaterialApp()
class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.black,
       
          // body: Container( 
          //       //MediaQuery methods in use
          //        width: MediaQuery.of(context).size.width,
          //        height: MediaQuery.of(context).size.height * 0.4, 
          //    )
       );
  }
}





class _HomePageState extends State<HomePage> {
 bool isButtonPressed=false;
  bool status7 = false;
  bool status8 = false;
  bool isSwitchOn = false;

  Color _textColor = Colors.black;
  Color _appBarColor = Color.fromRGBO(36, 41, 46, 1);
  Color _scaffoldBgcolor = Colors.white;


  enabledarkmode(){

  
    
        setState(() {
          darkmode=!darkmode;
          
        });

 }



 final controller = TorchController();
  void buttonpressed(){
    setState((){
      {
      //controller.toggle(intensity: 1);
      isButtonPressed=!isButtonPressed;
    }
    });

  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

     backgroundColor: darkmode ? backgroundcolorscheme:BlackClr ,
     
      
      body: Center( 
        child: button(
          ontap: buttonpressed,
          isButtonPressed: isButtonPressed,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: darkmode ? backgroundcolorscheme:BlackClr ,
        child: darkmode ? Icon(Icons.sunny): Icon(Icons.dark_mode), 
        tooltip: darkmode ? "TOGGLE DARK MODE" : "TOGGLE LIGHT MODE",
       hoverColor: Colors.green,
        
        onPressed: () {
       
          enabledarkmode();
                
        

      },
      ),
      
      
            
    );
    

  }
  
}


