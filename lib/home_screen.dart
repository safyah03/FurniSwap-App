import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furni_swap/auth_screens/forgot_password_screen.dart';
import 'package:furni_swap/auth_screens/login_screen.dart';
import 'package:furni_swap/auth_screens/sign_up_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedCountry;

  final List<String> countries = [
    "Egypt",
    "Saudi Arabia",
    "Jordan",
    "UAE",
    "Lebanon",
    "Kuwait",
    "Iraq",
    "Morocco",
    "Algeria",
    "Tunisia",
    "Palestine",
    "Oman",
    "Syria",
    "Sudan",
    "Yemen",
    "Libya",
    "Mauritania",
    "Bahrain",
    "Qatar",
    "Somalia",
    "Comoros"
  ];

  final double rating = 5;

  Widget buildOffersProductCard() {
    return ElevatedButton(
      onPressed: () { },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(right: 15),
        backgroundColor: const Color(0xfff9f9f9),
        overlayColor: Colors.blueGrey.withOpacity(0.2),
        shadowColor: Colors.white12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 23, vertical: 8),
            decoration: BoxDecoration(
                color: Color(0xffDB3022),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "-20%",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 5),
          Stack(
            alignment: Alignment.bottomRight,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage("assets/images/sofa.png"),
                      fit: BoxFit.fill,
                      height: 100,
                      width: 170,
                    )),
              ),
              Positioned(
                bottom: -20,
                right: -30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.favorite_border,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                      shape: CircleBorder()),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              RatingBarIndicator(
                rating: rating,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 20,
                direction: Axis.horizontal,
              ),
              Text(
                "(10)",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Home Furniture",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Sofa home",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("15\$",
                        style: TextStyle(color: Colors.grey, fontSize: 17)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("12\$",
                        style: TextStyle(color: Color(0xffDB3022), fontSize: 17))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildNewProductCard() {
    return ElevatedButton(
      onPressed: () { },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(right: 15),
          backgroundColor: const Color(0xfff9f9f9),
          overlayColor: Colors.blueGrey.withOpacity(0.2),
          shadowColor: Colors.white12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage("assets/images/sofa.png"),
                      fit: BoxFit.fill,
                      height: 100,
                      width: 170,
                    )),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                      color: Color(0xff222222),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "NEW",
                    style: TextStyle(color: Colors.white,fontSize: 12),
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                right: -30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.favorite_border,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                      shape: CircleBorder()),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              RatingBarIndicator(
                rating: rating,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 20,
                direction: Axis.horizontal,
              ),
              Text(
                "(10)",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Home Furniture",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Sofa home",
                  style: TextStyle(fontSize: 20,color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("15\$", style: TextStyle(color: Colors.grey, fontSize: 17)),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Opacity(
          opacity: 0.5,
          child: Image.asset(
            'assets/images/logo.png',
            height: 100,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_pin,
                    color: Color(0xff3a75ba),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      dropdownColor: Colors.white,
                      value: selectedCountry ?? "Egypt",
                      items: countries.map((String country) {
                        return DropdownMenuItem<String>(
                          value: country,
                          child: Text(country),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedCountry = newValue;
                        });
                      },
                      icon: const Icon(Icons.keyboard_arrow_down),
                      iconSize: 24,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0xffc7c7c7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3))),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        Expanded(
                            child: Text(
                          "Search",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ))
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text("Explore categories",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FloatingActionButton.small(
                              onPressed: () {},
                              child: Icon(
                                Icons.account_balance,
                                color: Color(0xff3a75ba),
                              ),
                              backgroundColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                            FloatingActionButton.small(
                              onPressed: () {},
                              child: Icon(
                                Icons.account_balance,
                                color: Color(0xff3a75ba),
                              ),
                              backgroundColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                            FloatingActionButton.small(
                              onPressed: () {},
                              child: Icon(
                                Icons.add,
                                color: Color(0xff3a75ba),
                              ),
                              backgroundColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                    Text(
                      "Last offers",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 280,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return buildOffersProductCard();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 20,
                          );
                        },
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("New", style: TextStyle(fontSize: 30)),
                                Text("Refurbished!",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("View all",
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 230,
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return buildNewProductCard();
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 20);
                            },
                            itemCount: 7,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
