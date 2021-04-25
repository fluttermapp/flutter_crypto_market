import 'package:flutter/material.dart';

import '../../k_padding.dart';
import '../../responsive_layout.dart';

class TopBarDescription extends StatelessWidget {
  //The Top Bar over the description page
  const TopBarDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Row(
        children: [
          if (!ResponsiveLayout.webMode(context))
            BackButton(),
          Spacer(),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: 100,
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
                  backgroundColor:
                      MaterialStateProperty.all(Colors.black.withOpacity(0.8))),
              child: Text(
                "Watchlist",
                style: TextStyle(),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: kPadding),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: 100,
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
                      Theme.of(context).primaryColor)),
              child: Text(
                "Buy Now",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
