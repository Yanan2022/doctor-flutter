

import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;

  final _scheduleWidgets = [
    // UpcomingSchecule(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("Schedule", style: TextStyle(
                fontSize: 32, 
                fontWeight: FontWeight.w500
              ),
            ), 
            ), 

            const SizedBox(height: 15,), 
            Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F6FA), 
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Text("Upcoming", style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    )
                  ],
                ),
            )

          ],
        ),
      ),

      



    );
  }
}