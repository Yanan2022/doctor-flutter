

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF7165D6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50), 
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 25,
                        ),
                    ), 
                    InkWell(
                      onTap: () {
                        // Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 25,
                        ),
                    )
                  ],
                ), 

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("images/doctor1.jpg"),
                      ), 
                      const SizedBox(height: 15), 
                      const Text("Dr. Doctor Name", 
                      style: TextStyle(
                        fontSize: 23, 
                        fontWeight: FontWeight.w500, 
                        color: Colors.white
                      ),), 

                      const SizedBox(height: 15), 
                      const Text("Therapist", style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold
                      ),), 

                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration:const BoxDecoration(
                              color:  Color(0xFF9F97E2), 
                              shape: BoxShape.circle
                            ),
                            child:const Icon(Icons.call, 
                            color: Colors.white,
                            size: 25,
                            ),
                          ), 

                          const SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration:const BoxDecoration(
                              color:  Color(0xFF9F97E2), 
                              shape: BoxShape.circle
                            ),
                            child:const Icon(
                              CupertinoIcons.chat_bubble_text_fill, 
                            color: Colors.white,
                            size: 25,
                            ),
                          ),


                        ],
                      )
                    ],
                  ),
                ), 

              ]
              ),
            ), 


            const SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    top: 20, 
                    left: 15, 
                  ),
                  decoration:const BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), 
                      topRight: Radius.circular(10)
                    ), 
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("About Doctor", style: TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.w500
                      ),),

                      const SizedBox(height: 5,), 
                      const Text("Labore dolor enim veniam enim ad in aliqua quis est eu qui. In id voluptate non dolor magna officia magna aliquip ad elit est minim. Velit qui do fugiat sunt id ea minim deserunt. Lorem dolor qui reprehenderit nostrud reprehenderit dolor ea occaecat aute eiusmod labore amet voluptate veniam. Ea reprehenderit occaecat voluptate officia ullamco. In ad commodo Lorem eiusmod in ea deserunt ea ex minim duis officia occaecat enim.", 
                        style: TextStyle(
                          fontSize: 16, 
                          color: Colors.black54
                        ),
                      ),

                      const SizedBox(height: 10,), 
                      Row(
                        children: [
                          const Text("Reviews", 
                          style: TextStyle(
                          fontSize: 18, 
                          color: Colors.black54
                          ),
                        ), 

                        const SizedBox(height: 10,), 
                        const Icon(
                          Icons.star, 
                          color: Colors.amber,
                          ), 
                        const Text("4.9",
                          style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.w500,
                          ),
                        ), 

                        const SizedBox(height: 5,), 
                        const Icon(
                          Icons.star, 
                          color: Colors.amber,
                          ), 
                        const Text("(124)",
                          style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.w500,
                          color:  Color(0xFF9F97E2),
                          ),
                        ), 
                        //space align next widget to the end of row
                        const Spacer(), 
                        TextButton(
                          onPressed: (){}, 
                          child: const Text("See All", 
                          style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.w500,
                          color:  Color(0xFF9F97E2),
                          ),
                          )
                        )
                        ],
                      ), 

                      SizedBox(height: 160,
                      child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: 4,
                          itemBuilder: (context, index){
                            return Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.symmetric(vertical: 5), 
                              decoration: BoxDecoration(
                                color: Colors.white, 
                                borderRadius: BorderRadius.circular(10), 
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12, 
                                    blurRadius: 4, 
                                    spreadRadius: 2, 
                                  ), 
                                ]
                              ),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                        radius: 25, 
                                        backgroundImage: AssetImage("images/${imgs[index]}"),
                                      ),
                                      title: const Text("Dr. Doctor Name", 
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                                      ), 
                                      subtitle:const Text("1 day ago"),
                                     
                                    ), 

                                    const SizedBox(height: 5,), 
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                        "Manu thanks to Dr. Dear. He is a great and professionnal doctor", 
                                      style: TextStyle(
                                        color: Colors.black
                                      ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }, 

                        ),
                      ), 

                      const SizedBox(height: 10,), 
                      const Text("Location", 
                      style: TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.w500
                      ),
                      ), 

                      ListTile(
                        leading: Container(
                          padding:const EdgeInsets.all(10),
                          decoration:const BoxDecoration(
                            color: Color(0xFFF0EEFA), 
                            shape: BoxShape.circle
                          ),

                          child: const Icon(
                            Icons.location_on, 
                            color: Color(0xFF9F97E2),
                            size: 30,
                          ),
                        ),

                        title: const Text(
                          "New York, Medical Center", 
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),

                        subtitle: const Text(
                          "adress line of the medical center,"
                        ),
                      )

                    ],
                  ),
                )



          ],

           
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15), 
        height: 130, 
        decoration: const BoxDecoration(
          color: Colors.white, 
          boxShadow: [
            BoxShadow(
              color: Colors.black12, 
              blurRadius: 4, 
              spreadRadius: 2
            )
          ]
        ),
        child:  Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Consultation price", style: TextStyle(
              color: Colors.black54
              ),), 
              Text("100 FCFA", style: TextStyle(
                fontSize: 20, 
                color: Colors.black54, 
                fontWeight: FontWeight.bold
              ),)
              ],
            ), 

            const SizedBox(height: 15,), 
            InkWell(
              onTap: () {
                
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: const Color(0xFF9F97E2),
                  borderRadius: BorderRadius.circular(10), 
                ),
                child: const Center(
                  child: Text("Book Appointment", 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 18, 
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}