import 'package:farm_easy/constants/shopByCategory.dart';
import 'package:flutter/material.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shop By Category',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 1.2),
              ),
              Text(
                'View All',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: 1.2,
                    color: Color(0xFF10847E)),
              ),
            ],
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
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 490,
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 1,
              childAspectRatio: .6),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 65,
                  width: 65,
                  child: Image.asset(listOfshop[index]["image"]),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]!),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 25,
                  child: Text(listOfshop[index]["name"],
                      textAlign: TextAlign.center,
                      //overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600)),
                )
              ],
            );
          },
          itemCount: listOfshop.length,
        ),
      ),
    );
  }
}
