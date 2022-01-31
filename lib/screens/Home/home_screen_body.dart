import 'package:carousel_slider/carousel_slider.dart';
import 'package:farm_easy/constants/list.dart';
import 'package:farm_easy/screens/Home/widgets/carouselSlider.dart';
import 'package:farm_easy/screens/Home/widgets/cashbackLab.dart';
import 'package:farm_easy/screens/Home/widgets/homeCard.dart';
import 'package:farm_easy/screens/Home/widgets/shopByCategory.dart';
import 'package:farm_easy/screens/Home/widgets/testSuggestion.dart';
import 'package:farm_easy/screens/Home/widgets/topList.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  HomeScreenBody({Key? key}) : super(key: key);
  Color? purpleneed = Colors.purple[900];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text('Deliver to'),
                    const SizedBox(
                      width: 2,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text('673304 kozhikode-2',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_down)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 14, horizontal: 15),
                    hintText: 'Search medicines/OTC products @18%...',
                    suffix: Container(
                      height: 25,
                      width: 25,
                      child: const Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                      color: const Color(0xFF10847E),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF10847E),
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF10847E),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TopList(),
              SizedBox(
                height: 20,
              ),
              HomeCarousel()
            ],
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        TestSuggestions(),
        Divider(
          color: Colors.black12,
          thickness: 10,
        ),
        SizedBox(
          height: 20,
        ),
        ShopByCategory(),
        Divider(
          color: Colors.black12,
          thickness: 10,
        ),
        CardHome(),
        Divider(
          color: Colors.black12,
          thickness: 10,
        ),
        CashBacklab()
      ],
    );
  }
}
