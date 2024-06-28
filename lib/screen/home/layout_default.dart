import 'package:first_day/screen/home/home_page.dart';
import 'package:first_day/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LayoutDefault extends StatefulWidget {
  const LayoutDefault({super.key});

  @override
  State<LayoutDefault> createState() => _LayoutDefaultState();
}

class _LayoutDefaultState extends State<LayoutDefault> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/icon/Vector.svg", height: 30,),
                const SizedBox(width: 10,),
                Text('Quizzo', style: text_bold,),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined)),
                const SizedBox(width: 10,),
                IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
              ],
            ),
          ]
        ),
      ),
      body:  (_selectedIndex == 0) ? const HomePage() : Text('Selected Index: $_selectedIndex'),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items:  <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icon/icon_navigation.svg", height: 24,),
            label: 'Join',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Create',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_sharp),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );

  }
}
