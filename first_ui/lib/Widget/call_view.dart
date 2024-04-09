import 'package:first_ui/models/call.dart';
import 'package:first_ui/theme.dart';
import 'package:flutter/material.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index){
        final call = callList[index];
        return ListTile(
          leading: Icon(
            Icons.account_circle,
            color: Colors.black45,
            size: 58,
          ),
          title: Text(
            call.name,
            style: customTextStyle,
          ),
          subtitle: Text(
            call.callDate,
            style: const TextStyle(
                color: Color(0xFF868B8F),
                fontSize: 16
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Icon(
              Icons.call,
              color: nameBackground,
              size: 25,
            ),
          ),
        );
      },
    );
  }
}
