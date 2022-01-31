import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Center(
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          height: 123,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border(),
              color: Color(0xFFA291FA)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get plus membership',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Save Flat 5% Extra on medicines\n & enjoy FREE deliver',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset('assets/images/family.png')),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
