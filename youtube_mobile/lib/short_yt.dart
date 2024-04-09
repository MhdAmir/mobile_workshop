import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final String VideoURL = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        // elevation: 0.0,
        title: Text(
            "Shorts",
            style: const TextStyle(
                color:  const Color(0xFF000000),
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                fontStyle:  FontStyle.normal,
                fontSize: 19.0
            )),
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.repeat),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.repeat),
      ),
    );
  }
}
