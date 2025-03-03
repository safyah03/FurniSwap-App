import 'package:flutter/material.dart';
import 'package:furni_swap/auth_screens/sign_up_screen.dart';
import 'package:furni_swap/categories_screen.dart';
import 'package:furni_swap/favorites_screen.dart';
import 'package:furni_swap/home_screen.dart';
import 'package:furni_swap/profile_screen.dart';
import 'package:furni_swap/renovated_screen.dart';
import 'package:furni_swap/settings_screen.dart';
import 'auth_screens/login_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int bottomNavBarIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      bottomNavBarIndex = index;
    });
  }

  Widget _buildOffstageNavigator(int index, Widget page) {
    return Offstage(
      offstage: bottomNavBarIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => page,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildOffstageNavigator(0, const HomeScreen()),
          _buildOffstageNavigator(1, const CategoriesScreen()),
          _buildOffstageNavigator(2, const RenovatedScreen()),
          _buildOffstageNavigator(3, FavoritesScreen()),
          _buildOffstageNavigator(4, const ProfileScreen()),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
        child: Container(
          margin: const EdgeInsets.only(top: 5),
          height: 70,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                offset: const Offset(0, -3))
          ]),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xff3a75ba),
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: bottomNavBarIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                  activeIcon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: "Categories",
                  activeIcon: Icon(Icons.shopping_cart)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: "Renovated",
                  activeIcon: Icon(Icons.shopping_bag)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: "Favorites",
                  activeIcon: Icon(Icons.favorite)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: "Profile",
                  activeIcon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
    );
  }
}


