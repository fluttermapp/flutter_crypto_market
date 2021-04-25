import 'package:flutter/material.dart';
import 'responsive_layout.dart';

import 'cryptoCoin/coin_drawer.dart';
import 'cryptoCoin/coins_description.dart';
import 'cryptoCoin/coins.dart';

class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayout(
        iphone: Coins(),
        ipad: Row(
          children: [
            Expanded(
              flex: _size.width < 800 ? 6 : 7,
              child: Coins(),
            ),
            Expanded(
              flex: _size.width < 800 ? 4 : 3,
              child: CoinDrawer(),
            ),
          ],
        ),
        ipadTurned: Row(
          children: [
            Expanded(
              flex: _size.width < 900 ? 5 : 4,
              child: Coins(),
            ),
            Expanded(
              flex: _size.width < 900 ? 5 : 6,
              child: CoinsDescription(),
            ),
          ],
        ),
        macbook: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 3 : 6,
              child: Coins(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 7 : 10,
              child: CoinsDescription(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: CoinDrawer(),
            ),
          ],
        ),
      ),
    );
  }
}
