import 'package:flutter/material.dart';

AppBar customAppBar2(
  BuildContext context,
  GlobalKey<ScaffoldState>? key,
) =>
    AppBar(
      elevation: 0,
      backgroundColor: Colors.black45,
      title: IconButton(
        icon: Icon(Icons.close_fullscreen_outlined,
            color: Colors.transparent, size: 30),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        PopupMenuButton(
            offset: Offset(0, 45), // SET THE (X,Y) POSITION
            iconSize: 30,
            icon: Icon(
              Icons.message_rounded, // CHOOSE YOUR CUSTOM ICON
              color: Colors.white,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  enabled: false, // DISABLED THIS ITEM
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // WRITE YOUR CODE HERE
                    ],
                  ),
                ),
              ];
            }),
        PopupMenuButton(
            offset: Offset(0, 45), // SET THE (X,Y) POSITION
            iconSize: 30,
            icon: Icon(
              Icons.video_camera_front,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  enabled: false, // DISABLED THIS ITEM
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // WRITE YOUR CODE HERE
                    ],
                  ),
                ),
              ];
            }),
        PopupMenuButton(
            offset: Offset(0, 45), // SET THE (X,Y) POSITION
            iconSize: 30,
            icon: Icon(
              Icons.language_sharp,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  enabled: false, // DISABLED THIS ITEM
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // WRITE YOUR CODE HERE
                    ],
                  ),
                ),
              ];
            }),
        TextButton(
            onPressed: (() => showMenu(
                context: context,
                position: RelativeRect.fromSize(
                  Rect.fromCenter(center: Offset.zero, width: 100, height: 100),
                  Size(100, 100),
                ),
                items: [])),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 30,
                  color: Colors.green,
                ),
                Text("My Name")
              ],
            ))
      ],
    );
