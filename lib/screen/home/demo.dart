import 'package:flutter/material.dart';

class PostList extends StatefulWidget {
  const PostList({super.key});

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> with TickerProviderStateMixin {
  final List<AnimationController> _controllers = [];
  final List<Animation<Offset>> _offsetAnimations = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 20; i++) {
      _controllers.add(AnimationController(
        duration: const Duration(seconds: 2),
        vsync: this,
      )..forward());
      _offsetAnimations.add(Tween<Offset>(
        begin: const Offset(0.0, 10.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: _controllers[i],
        curve: Curves.easeOut,
      )));
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Post'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height/1.5,
        color: Colors.yellow.shade200,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return SlideTransition(
              position: _offsetAnimations[index],
              child: ListTile(
                title: Text('Post $index'),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      )
    );
  }
}