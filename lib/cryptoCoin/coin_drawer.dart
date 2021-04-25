import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../k_padding.dart';
import '../responsive_layout.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'drawer/drawer_items.dart';

class CoinDrawer extends StatelessWidget {
  const CoinDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kPadding : 0),
      //color: Colors.pink,
      color: Theme.of(context).accentColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Crypto Coin",
                    style: GoogleFonts.ubuntu().copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: kPadding),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: 300,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: kPadding,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.8))),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: kPadding),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: 300,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: kPadding,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.8))),
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: kPadding * 2),
              DrawerItems(
                onPressed: () {},
                title: "Your Account",
                icon: Icons.person_outline_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Your Orders",
                icon: Icons.cloud_circle_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Assistance",
                icon: Icons.help_center_outlined,
                selected: true,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Security",
                icon: Icons.lock_outline_rounded,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Your Payments",
                icon: Icons.payment,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Gift Cards",
                icon: Icons.card_giftcard,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Messages",
                icon: Icons.message_outlined,
                number: 2,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Notifications",
                icon: Icons.notifications_active_outlined,
              ),
              SizedBox(height: kPadding * 2),
            ],
          ),
        ),
      ),
    );
  }
}
