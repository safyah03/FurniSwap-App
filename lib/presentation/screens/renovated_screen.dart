import 'package:flutter/material.dart';

class RenovatedScreen extends StatelessWidget {
  const RenovatedScreen({super.key});

  Widget buildCategoryButton(
      {required String name,
      required String imagePath,
      required Color titleColor}) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.only(left: 20),
            fixedSize: const Size(343, 100),
            backgroundColor: Colors.white,
            overlayColor: Colors.blueGrey.withOpacity(0.2),
            shadowColor: Colors.white12,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                name,
                style: TextStyle(color: titleColor, fontSize: 17.5),
              ),
            ),
            ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                child: Image.asset(
                  imagePath,
                  width: 171.5,
                  fit: BoxFit.cover,
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Renovated"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    fixedSize: const Size(343, 100),
                    backgroundColor: const Color(0xffDB3022),
                    overlayColor: Colors.white.withOpacity(0.2),
                    shadowColor: Colors.white12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "SALES",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      "Up to 50% off",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              buildCategoryButton(
                  name: "Furniture",
                  imagePath: "assets/images/furniture.png",
                  titleColor: Colors.black),
              const SizedBox(
                height: 15,
              ),
              buildCategoryButton(
                  name: "Home appliances",
                  imagePath: "assets/images/home_appliances.png",
                  titleColor: Colors.black),
              const SizedBox(
                height: 15,
              ),
              buildCategoryButton(
                  name: "Antiques",
                  imagePath: "assets/images/antiques.png",
                  titleColor: Colors.black),
              const SizedBox(
                height: 15,
              ),
              buildCategoryButton(
                  name: "Sales to 50%",
                  imagePath: "assets/images/antiques.png",
                  titleColor: const Color(0xffDB3022)),
            ],
          ),
        ),
      ),
    );
  }
}
