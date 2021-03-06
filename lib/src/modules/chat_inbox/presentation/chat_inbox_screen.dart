import 'package:flutter/material.dart';
import 'package:yakwetu/src/config/size_config.dart';

import 'components/body.dart';
import 'components/chat_inbox_app_bar.dart';

class ChatInboxScreen extends StatelessWidget {
  const ChatInboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: chatInboxAppBar(context),
      body: ChatInboxBody(),
    );
  }
}
