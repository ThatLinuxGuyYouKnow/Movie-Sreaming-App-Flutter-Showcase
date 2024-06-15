import 'package:flutter/material.dart';
import 'package:silly/Components/TextWidgets.dart';
import 'package:silly/Content%20Pages/Movies.dart';
import 'package:silly/Content%20Pages/Trending.dart';
import 'package:silly/Content%20Pages/TvShows.dart';
import 'package:silly/navBar%20Pages/premium.dart';
import 'package:silly/navBar%20Pages/profileAndSetting.dart';
import 'package:silly/navBar%20Pages/search.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController _tabController;
  double screenHeight = 0.0;
  bool appBarScrollStateMonitor = false;
  int _selectedIndex = 0;

  final List<Widget> _utilityScreens = [
    SearchScreen(),
    SubscriptionScreen(),
    ProfileAndSetting(),
    NewScreen(), // Add your new screen here
  ];
  final PageController _utilityPageController = PageController();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _tabController.dispose();
    _utilityPageController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      appBarScrollStateMonitor = _scrollController.hasClients &&
          _scrollController.offset > (screenHeight * 0.15);
    });
  }

  void _onUtilityPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onUtilityItemTapped(int index) {
    _utilityPageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: _utilityPageController,
        onPageChanged: _onUtilityPageChanged,
        children: [
          // Main content with TabBar
          NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  title: appBarScrollStateMonitor
                      ? const SizedBox.shrink()
                      : Column(
                          children: [
                            SizedBox(height: screenHeight * 0.032),
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.03,
                                bottom: screenHeight * 0.001,
                              ),
                              child: const Text(
                                'Silly',
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                  backgroundColor: Colors.transparent,
                  floating: true,
                  snap: true,
                  pinned: true,
                  expandedHeight: screenHeight * 0.18,
                  collapsedHeight: screenHeight * 0.1,
                  flexibleSpace: Container(
                      decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF1C1C1C), // Slightly grey black
                        Colors.black,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  )),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(10),
                    child: TabBar(
                      controller: _tabController,
                      tabs: const [
                        Tab(
                            child: Text('Trending',
                                style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    color: Color.fromARGB(255, 255, 115, 0),
                                    fontSize: 18))),
                        Tab(
                            child: Text('Shows',
                                style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    color: Color.fromARGB(255, 255, 115, 0),
                                    fontSize: 18))),
                        Tab(
                            child: Text('Movies',
                                style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    color: Color.fromARGB(255, 255, 115, 0),
                                    fontSize: 18))),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [Trending(), TvShows(), Movies()],
            ),
          ),
          // Utility screens
          SearchScreen(),
          SubscriptionScreen(),
          ProfileAndSetting(),
          NewScreen(), // Add your new screen here
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: Colors.black,
        items: [
          BottomBarItem(
            unSelectedColor: Colors.white,
            icon: const Icon(
              Icons.tv,
              color: Colors.orange,
            ),
            title: const Text('Watch'),
            backgroundColor: Colors.orange,
          ),
          BottomBarItem(
            unSelectedColor: Colors.white,
            icon: const Icon(
              Icons.search,
              color: Colors.orange,
            ),
            title: const Text('Search'),
            backgroundColor: Colors.orange,
          ),
          BottomBarItem(
            unSelectedColor: Colors.white,
            icon: const Icon(
              Icons.workspace_premium,
              color: Colors.orange,
            ),
            title: Padding(
              padding: EdgeInsets.only(right: screenWidth * .04),
              child: const Text('Premium'),
            ),
            backgroundColor: Colors.orange,
          ),
          BottomBarItem(
            unSelectedColor: Colors.white,
            icon: const Icon(
              Icons.settings,
              color: Colors.orange,
            ),
            title: const Text('Settings'),
            backgroundColor: Colors.orange,
          ),
        ],
        option: BubbleBarOptions(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          barStyle: BubbleBarStyle.horizontal,
          bubbleFillStyle: BubbleFillStyle.fill,
          opacity: 0.3,
        ),
        hasNotch: true,
        currentIndex: _selectedIndex,
        onTap: (index) {
          // If the Home tab is tapped, go back to the first page in the PageView
          if (index == 0) {
            _utilityPageController.jumpToPage(0);
          } else {
            _onUtilityItemTapped(index);
          }
        },
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'New Screen',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
