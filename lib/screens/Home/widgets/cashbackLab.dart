import 'package:farm_easy/constants/cashbackLab.dart';
import 'package:farm_easy/constants/shopByCategory.dart';
import 'package:flutter/material.dart';

class CashBacklab extends StatelessWidget {
  const CashBacklab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Flat Rs.200 cashback on lab tests',
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
          ),
          subtitle: Text(
            'Code:CHECKUP200',
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        ShopByCategoryGrid()
      ],
    );
  }
}

class ShopByCategoryGrid extends StatelessWidget {
  const ShopByCategoryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 490,
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 3,
              childAspectRatio: .7),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("assets/images/b11.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(cashbackGrid[index]["head"]),
                      ),
                      Expanded(child: Icon(Icons.arrow_right_outlined))
                    ],
                  ),
                ),
                Text("price")
              ]),
            );
          },
          itemCount: cashbackGrid.length,
        ),
      ),
    );
  }
}
