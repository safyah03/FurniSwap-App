import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({super.key});

  final List<String> categories = [
    "Furniture",
    "Home appliances",
    "Antiques",
    "Sales to 50%"
  ];

  final double rating = 5;

  Widget buildCategoryItem(String categoryName) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: Colors.black,
          overlayColor: Colors.white.withOpacity(0.4),
          shadowColor: Colors.white12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Text(
        categoryName,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }

  Widget buildProductCard() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.only(right: 15),
          backgroundColor: const Color(0xfff9f9f9),
          overlayColor: Colors.blueGrey.withOpacity(0.2),
          shadowColor: Colors.white12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: const SizedBox(
                        height: 160,
                        child: Image(
                          image: AssetImage("assets/images/sofa.png"),
                        ),
                      )),
                ),
                Positioned(
                  top: -1,
                  right: -3,
                  child: IconButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Colors.red.withOpacity(0.2))),
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  right: -30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffDB3022),
                        foregroundColor: Colors.white,
                        shape: const CircleBorder()),
                    child: const Icon(
                      Icons.shopping_bag,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              RatingBarIndicator(
                rating: rating,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 20,
                direction: Axis.horizontal,
              ),
              const Text(
                "(10)",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    Text(
                      "Color: ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Gold",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text("15\$",
                    style: TextStyle(color: Colors.black, fontSize: 17)),
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
        title: const Text("Favorites"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 10,
                ),
              ],
            ),
            height: 118,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return buildCategoryItem(categories[index]);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 15,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white,
                              overlayColor: Colors.blueGrey.withOpacity(0.2),
                              shadowColor: Colors.white12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.filter_list,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Filters",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white,
                              overlayColor: Colors.blueGrey.withOpacity(0.2),
                              shadowColor: Colors.white12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.swap_vert,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Price: lowest to high",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white,
                              overlayColor: Colors.blueGrey.withOpacity(0.2),
                              shadowColor: Colors.white12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Icon(
                            Icons.view_module,
                            color: Colors.black,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 200,
                    child: buildProductCard(),
                  );
                },
                itemCount: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
