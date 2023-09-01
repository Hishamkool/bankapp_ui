import 'package:bankapp_ui/HelperWidgets/textfielddata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: bankui_mainPage(),
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(
    //   // iconTheme: IconThemeData(color: Colors.black),
    //
    // ),
  ));
}

class bankui_mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Settings',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            // expandedHeight: 150,
            floating: true,
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg'),
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),

          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 12.0, left: 20, right: 20, bottom: 20),
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(20))),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding: EdgeInsets.only(left: 10),
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: 'Search for something'),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 750,
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                color: Colors.white,
              ),
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      tabs: const [
                        Tab(
                          text: 'Edit Profile',
                        ),
                        Tab(
                          text: 'Preference',
                        ),
                        Tab(
                          text: 'Security',
                        ),
                      ],
                      labelColor: Colors.blue[900],
                      unselectedLabelColor: Colors.grey,
                      // indicatorColor: Colors.blue[900], //not working when indicator property is used
                      // indicatorSize: TabBarIndicatorSize.label ,
                      indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(width: 3.0, color: Colors.blue),
                        insets: EdgeInsets.symmetric(horizontal: 20.0),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        IntrinsicHeight(child: tabOneContent()),
                        Center(
                          child: Text('Preferences page'),
                        ),
                        Center(
                          child: Text('security page'),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ]))

          //
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}

class tabOneContent extends StatelessWidget {
  List editProfileTitles = [
    'Your Name',
    'User Name',
    'Email',
    'Password',
    'Date of Birth',
  ];
  List editProfileHintText = [
    'Charlene Reed',
    'Charlene Reed',
    'charelenereed@gmail.com',
    '*********',
    '29/11/1998',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                    'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp'),
              ),
              Positioned(
                  right: 0,
                  bottom: 15,
                  child: CircleAvatar(
                    child: Icon(Icons.edit),
                    backgroundColor: Colors.blue[900],
                  )),
            ],
          ),
          TextFieldData(),
        ],
      ),
    );
  }
}
