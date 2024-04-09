import 'package:first_ui/Widget/call_view.dart';
import 'package:first_ui/Widget/chat_view.dart';
import 'package:first_ui/Widget/community_view.dart';
import 'package:first_ui/Widget/status_view.dart';
import 'package:first_ui/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({Key? key}) : super(key: key);

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0; // Set default index to 0

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: currentIndex);
    tabController.addListener(() {
      setState(() {
        currentIndex = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whatsAppBackground,
      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: whatsAppBar,
        actions: [
          currentIndex == 2 ? Container() : Icon(Icons.camera_alt),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ChatView(),
          StatusView(),
          CommunityView(),
          CallView(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(getFabIcon(currentIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: whatsAppBar,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
            tabController.index = currentIndex; // Update TabController index
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_sharp),
            label: "Pembaruan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: "Komunitas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Panggilan",
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed, // Ensure all tabs are visible
      ),
    );
  }

  IconData getFabIcon(int index) {
    switch (index) {
      case 0:
        return Icons.message_rounded;
      case 1:
        return Icons.camera;
      case 2:
        return Icons.add;
      case 3:
        return Icons.call;
      default:
        return Icons.message_rounded;
    }
  }
}
