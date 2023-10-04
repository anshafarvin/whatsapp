import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application./
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Widget openPopUp() {
    return PopupMenuButton(
      itemBuilder: (context) {
        return List.generate(
            3,
                (index) => const PopupMenuItem(
              child: Text('Setting'),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            // Widget for the search
            const Icon(Icons.search),
            // Widget for implementing the three-dot menu
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              itemBuilder: (context) {
                return [
                  // In this case, we need 5 popupmenuItems one for each option.
                  const PopupMenuItem(child: Text('New Group')),
                  const PopupMenuItem(child: Text('New Broadcast')),
                  const PopupMenuItem(child: Text('Linked Devices')),
                  const PopupMenuItem(child: Text('Starred Messages')),
                  const PopupMenuItem(child: Text('Settings')),
                ];
              },
            ),
          ],
          backgroundColor: const Color(0xff128C7E),
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                  iconMargin: EdgeInsets.all(100),
                  child: Icon(
                    Icons.camera_alt_rounded,
                  )),
              Tab(
                child: Text('CHATS', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('STATUS', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('CALLS', style: TextStyle(color: Colors.white)),
              ),
            ],
            labelColor: Colors.white,
          ),
        ),

        // ! THE DESIGNED BODY
        body: const TabBarView(
          children: [
            Center(child: Text('This feature is coming soon')),
            ChatsTab(),
            Center(child: Text('Status feature is coming soon')),
            Center(child: Text('Call feature is coming soon')),
          ],
        ),
      ),
    );
  }
}

class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: const [
                SingleChatWidget (
                    chatTitle: "iqu",
                    chatMessage: 'Are you there dear',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                       'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
                 SingleChatWidget(
                     chatTitle: "Anu",
                     chatMessage: 'How are you?',
                     seenStatusColor: Colors.grey,
                      imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
                  SingleChatWidget(
                      chatTitle: "niz",
                      chatMessage: 'Are you coming for a ride',
                      seenStatusColor: Colors.grey,
                      imageUrl:
                      'https://static3.srcdn.com/wordpress/wp-content/uploads/2017/06/Jaqen-Hghar-Game-of-Thrones.jpg'),
                  SingleChatWidget(
                    chatTitle: "bhavana",
                    chatMessage: 'Are you in Cochin',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://i.insider.com/5ce420e193a15232821d3084?width=700'),
                SingleChatWidget(
                    chatTitle: "aisha",
                    chatMessage: 'Not good for my health',
                    seenStatusColor: Colors.grey,
                    imageUrl:
                    'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'),
                SingleChatWidget(
                    chatTitle: "Naf",
                    chatMessage: 'welcome to our new company',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
                SingleChatWidget(
                    chatTitle: "Mom",
                    chatMessage: 'Did you ate food dear',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
                SingleChatWidget(
                    chatTitle: "Brother",
                    chatMessage: 'Do you have any financial issues?',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'),
                SingleChatWidget(
                    chatTitle: "Sona",
                    chatMessage: 'how was your studies',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
                SingleChatWidget(
                    chatTitle: "Rumi",
                    chatMessage: 'when will you come',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
                SingleChatWidget(
                    chatTitle: "Daddy",
                    chatMessage: 'are you feel good?',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'),
                SingleChatWidget (
                    chatTitle: "iqu",
                    chatMessage: 'Are you there dear',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
                SingleChatWidget(
                    chatTitle: "Anu",
                    chatMessage: 'How are you?',
                    seenStatusColor: Colors.grey,
                    imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
                SingleChatWidget(
                    chatTitle: "niz",
                    chatMessage: 'Are you coming for a ride',
                    seenStatusColor: Colors.grey,
                    imageUrl:
                    'https://static3.srcdn.com/wordpress/wp-content/uploads/2017/06/Jaqen-Hghar-Game-of-Thrones.jpg'),
                SingleChatWidget(
                    chatTitle: "bhavana",
                    chatMessage: 'Are you in Cochin',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://i.insider.com/5ce420e193a15232821d3084?width=700'),
                SingleChatWidget(
                    chatTitle: "aisha",
                    chatMessage: 'Not good for my health',
                    seenStatusColor: Colors.grey,
                    imageUrl:
                    'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'),
                SingleChatWidget(
                    chatTitle: "Naf",
                    chatMessage: 'welcome to our new company',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
                SingleChatWidget(
                    chatTitle: "Mom",
                    chatMessage: 'Did you ate food dear',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
                SingleChatWidget(
                    chatTitle: "Brother",
                    chatMessage: 'Do you have any financial issues?',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'),
                SingleChatWidget(
                    chatTitle: "Sona",
                    chatMessage: 'how was your studies',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
                SingleChatWidget(
                    chatTitle: "Rumi",
                    chatMessage: 'when will you come',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
                SingleChatWidget(
                    chatTitle: "Daddy",
                    chatMessage: 'are you feel good?',
                    seenStatusColor: Colors.blue,
                    imageUrl:
                    'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'),
              ],
            ),
            ),
        );
    }
}

