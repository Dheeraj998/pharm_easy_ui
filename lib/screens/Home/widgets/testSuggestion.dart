import 'package:farm_easy/constants/test_suggestion1.dart';
import 'package:flutter/material.dart';

class TestSuggestions extends StatelessWidget {
  const TestSuggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // Icon(Icons.label_important),I
              Image.asset(
                'assets/images/lab.png',
                height: 25,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Test Suggestions',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 1.2),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 10, top: 10),
          height: 350,
          child: TestList(),
        )
      ]),
    );
  }
}

class TestList extends StatelessWidget {
  const TestList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  height: 155,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (index < colorTestSuggestion1.length)
                        ? Color(colorTestSuggestion1[index])
                        : Color(colorTestSuggestion1[0]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        test_suggestion1[index]["name"],
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Starts from',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            test_suggestion1[index]["price"],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 10),
                            alignment: Alignment.bottomRight,
                            height: 90,
                            width: 100,
                            child: Image(
                              image:
                                  AssetImage(test_suggestion1[index]["image"]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  height: 155,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (index < colorTestSuggestion2.length)
                        ? Color(colorTestSuggestion2[index])
                        : Color(colorTestSuggestion2[0]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        test_suggestion2[index]["name"],
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Starts from',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            test_suggestion2[index]["price"],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 10),
                            alignment: Alignment.bottomRight,
                            height: 90,
                            width: 100,
                            child: Image(
                              image:
                                  AssetImage(test_suggestion2[index]["image"]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
              width: 1,
            ),
        itemCount: test_suggestion1.length);
  }
}
