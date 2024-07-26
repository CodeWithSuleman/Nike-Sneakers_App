import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: TabBar(
              indicator: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              tabs: [
                Tab(text: 'All Shoes'),
                Tab(text: 'Outdoor'),
                Tab(text: 'Tennis'),
              ],
            ),
          ),
          Container(
            height: 300, // Adjust as needed
            child: TabBarView(
              children: [
                Center(child: Text('All Shoes Content')),
                Center(child: Text('Outdoor Content')),
                Center(child: Text('Tennis Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
