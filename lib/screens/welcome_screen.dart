
import 'package:doctor/screens/login_screen.dart';
import 'package:doctor/widgets/navbar_roots.dart';
import 'package:doctor/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
           const SizedBox(height: 15,),
           Align(alignment: Alignment.centerRight,
           child: TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> NavBarRoots()
              ));
            },
            child: const Text('SKIP', 
              style: TextStyle(
                color: Color(0xFF7165D6), 
                fontSize: 20,
              ),
            ),
            
           ) ,
           ), 

           const SizedBox(height: 50,),
           Padding(
            padding: const EdgeInsets.all(20), 
            child: Image.asset("images/doctors.png"),
           ), 

          const SizedBox(height: 50,),
          const Text("Doctors Appointment",  
              style: TextStyle(
                color: Color(0xFF7165D6), 
                fontSize: 30,
                fontWeight: FontWeight.bold, 
                letterSpacing: 1, 
                wordSpacing: 2
              ),
          ), 

          const SizedBox(height: 10,),
          const Text("Appoint Your Doctor",  
              style: TextStyle(
                color: Colors.black54, 
                fontSize: 35,
                fontWeight: FontWeight.w500, 
              ),
          ), 

          const SizedBox(height: 60,),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: const Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> LoginScreen()
                      ));
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40), 
                      child: Text("Connexion", style: TextStyle(
                        color: Colors.white, 
                        fontSize: 22, 
                        fontWeight: FontWeight.bold, 
                      ),),
                    ),
                  ),
                ), 

                Material(
                  color: const Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> SignUpScreen()
                      ));
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40), 
                      child: Text("Inscription", style: TextStyle(
                        color: Colors.white, 
                        fontSize: 22, 
                        fontWeight: FontWeight.bold, 
                      ),),
                    ),
                  ),
                ),



              ],
          )

          ],
        ),
      ),
    );
  }
}