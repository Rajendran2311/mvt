import 'package:flutter/material.dart';
import 'drawer.dart';
import 'home_page.dart';
import 'channels_page.dart';
import 'interview_page.dart';
import 'package:mvt/podcast_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home_Page(),
    Interview_Page(),
    Channels_Page(),
    Podcast_Page(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home_Page();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MVT',
          style: TextStyle(color: Colors.orange),
        ),
        centerTitle: true,
        actions: [Icon(Icons.search, color: Colors.black)],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: MainDrawer(),
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = Home_Page();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color:
                              currentTab == 0 ? Colors.orange : Colors.black45,
                        ),
                        Text(
                          currentTab == 0 ? 'Home' : '',
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Colors.orange
                                  : Colors.black45),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = Channels_Page();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.tv,
                          color:
                              currentTab == 1 ? Colors.orange : Colors.black45,
                        ),
                        Text(
                          currentTab == 1 ? 'Channels' : '',
                          style: TextStyle(
                              color: currentTab == 1
                                  ? Colors.orange
                                  : Colors.black45),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = Interview_Page();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monochrome_photos_outlined,
                          color:
                              currentTab == 2 ? Colors.orange : Colors.black45,
                        ),
                        Text(
                          currentTab == 2 ? 'Interview' : '',
                          style: TextStyle(
                              color: currentTab == 2
                                  ? Colors.orange
                                  : Colors.black45),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = Podcast_Page();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mic,
                          color:
                              currentTab == 3 ? Colors.orange : Colors.black45,
                        ),
                        Text(
                          currentTab == 3 ? 'Poacast' : '',
                          style: TextStyle(
                              color: currentTab == 3
                                  ? Colors.orange
                                  : Colors.black45),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
