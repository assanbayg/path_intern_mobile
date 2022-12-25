import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  final notificationsList = <String>[
    'Ваша заявка рассматривается!',
    'Вы отправили свою заявку!'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      height: 550,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 5,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ...notificationsList
                      .map((e) => Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 10),
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 300,
                                  ),
                                  child: Text(e,
                                      style: TextStyle(
                                        wordSpacing: 2.5,
                                        height: 1.5,
                                      )),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
