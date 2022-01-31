import 'package:farm_easy/constants/list.dart';
import 'package:flutter/material.dart';

class TopList extends StatelessWidget {
  const TopList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(home_list.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: Text(
                    '     FLAT \n 18% OFF',
                    style: TextStyle(
                        color: Color(0xFF10847E), fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(0, 1),
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(home_list[index]['image']),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(home_list[index]['name'])
              ],
            ),
          );
        }),
      ),
    );
  }
}
