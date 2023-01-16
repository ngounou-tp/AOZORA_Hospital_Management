import 'package:admin/Popup%20Windows/Menu_items.dart';
import 'package:admin/appbar_component/videoClass.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/login/login_screen.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

AppBar customAppBar(
  BuildContext context,
  GlobalKey<ScaffoldState>? key,
) =>
    AppBar(
      elevation: 0,
      backgroundColor: Colors.blue,
      leading: IconButton(
        icon: Icon(
          Icons.menu_open,
          size: Responsive.isDesktop(context)
              ? 30
              : Responsive.isTablet(context)
                  ? 25
                  : 20,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MenuItems()),
          );
        },
      ),
      title: CustomText(
          text: "Mon Tableau de bord",
          size: Responsive.isDesktop(context)
              ? 30
              : Responsive.isTablet(context)
                  ? 25
                  : 20,
          color: Colors.white),
      actions: <Widget>[
        PopupMenuButton(
            offset: Offset(0, 45), // SET THE (X,Y) POSITION
            iconSize: Responsive.isDesktop(context)
                ? 30
                : Responsive.isTablet(context)
                    ? 25
                    : 20,
            icon: Icon(
              Icons.message_rounded, // CHOOSE YOUR CUSTOM ICON
              color: Colors.white,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    padding: EdgeInsets.only(right: 50, left: 20),
                    value: 'Home',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          child: Text(
                            'Tous',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: Text(
                            'Messagerie Instantanee',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: Responsive.isDesktop(context)
                                    ? 30
                                    : Responsive.isTablet(context)
                                        ? 25
                                        : 20,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: Text(
                            'Canaux',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: Responsive.isDesktop(context)
                                    ? 30
                                    : Responsive.isTablet(context)
                                        ? 25
                                        : 20,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: Text(
                            'Nouveau Message',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: Responsive.isDesktop(context)
                                    ? 30
                                    : Responsive.isTablet(context)
                                        ? 25
                                        : 20,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {},
                        ),
                        Divider()
                      ],
                    )),
              ];
            }),
        IconButton(
          icon: Icon(
            Icons.video_camera_front,
            size: Responsive.isDesktop(context)
                ? 30
                : Responsive.isTablet(context)
                    ? 25
                    : 20,
            color: Colors.white,
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => videoform(context),
            );
          },
        ),
        PopupMenuButton(
            offset: Offset(0, 45), // SET THE (X,Y) POSITION
            iconSize: Responsive.isDesktop(context)
                ? 30
                : Responsive.isTablet(context)
                    ? 25
                    : 20,
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
                      TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: CustomText(
                              text: "Francais",
                              size: Responsive.isDesktop(context)
                                  ? 30
                                  : Responsive.isTablet(context)
                                      ? 25
                                      : 20,
                            ),
                          )),
                      TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: CustomText(
                            text: "Anglais",
                            size: Responsive.isDesktop(context)
                                ? 30
                                : Responsive.isTablet(context)
                                    ? 25
                                    : 20,
                          ),
                        ),
                      )
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
                  size: Responsive.isDesktop(context)
                      ? 30
                      : Responsive.isTablet(context)
                          ? 25
                          : 20,
                  color: Colors.green,
                ),
                CustomText(
                  text: "My Name",
                  size: Responsive.isDesktop(context)
                      ? 25
                      : Responsive.isTablet(context)
                          ? 20
                          : 15,
                  color: Colors.white,
                )
              ],
            )),
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    duration: const Duration(milliseconds: 500),
                    child: Login()),
              );
            },
            icon: Icon(Icons.logout))
      ],
    );
