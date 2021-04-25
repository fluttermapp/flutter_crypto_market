import 'package:flutter/material.dart';
import 'package:fluttercryptomarket/responsive_layout.dart';
import 'package:google_fonts/google_fonts.dart';

import '../k_padding.dart';
import 'item_description/top_bar_description.dart';

class CoinsDescription extends StatefulWidget {
  const CoinsDescription({
    Key key,
  }) : super(key: key);

  @override
  _CoinsDescriptionState createState() => _CoinsDescriptionState();
}

class _CoinsDescriptionState extends State<CoinsDescription> {
  ScrollController _slidingInYourDMs = ScrollController();

  Widget _theDescriptionPageThatWillScroll() {
    return Builder(
      builder: (context) => SingleChildScrollView(
        controller: _slidingInYourDMs,
        padding: EdgeInsets.all(kPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              maxRadius: 24,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("images/bitcoin.png"),
            ),
            SizedBox(width: kPadding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: "Bitcoin  ",
                                style: GoogleFonts.ubuntu().copyWith(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                                /*
                                            Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                .copyWith(fontSize: 20),
                                                */
                                children: [
                                  TextSpan(
                                      text: "Blockchain",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith()),
                                ],
                              ),
                            ),
                            Text(
                              "Cryptocurrency",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: kPadding / 2),
                      Text("\$ 50196", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: kPadding),
                  LayoutBuilder(
                    builder: (context, constraints) => SizedBox(
                      width: constraints.maxWidth > 840
                          ? 800
                          : constraints.maxWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: constraints.maxWidth > 840
                                ? 600
                                : constraints.maxWidth - 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "images/bitcoin_tree.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                          SizedBox(height: kPadding / 2),
                          Text(
                            "Bitcoin is a cryptocurrency invented in 2008 by an unknown person or group of people using the name Satoshi Nakamoto.\nThe currency began use in 2009 when its implementation was released as open-source software.\n \nBitcoin is a decentralized digital currency, without a central bank or single administrator, that can be sent from user to user on the peer-to-peer bitcoin network without the need for intermediaries. \n\nTransactions are verified by network nodes through cryptography and recorded in a public distributed ledger called a blockchain.",
                            style: TextStyle(),
                          ),
                          SizedBox(height: kPadding),
                          Container(
                            width: constraints.maxWidth > 840
                                ? 600
                                : constraints.maxWidth - 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "images/bitcoin_money.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(height: kPadding),
                          Text(
                            "According to CoinMetrics and Forbes, on 11 March 281,000 bitcoins were sold by owners who held them for only thirty days.\nThis compared to 4,131 Bitcoins that had laid dormant for a year or more, indicating that the vast majority of the bitcoin volatility on that day was from recent buyers.\n \nDuring the week of 11 March 2020 as a result of the COVID-19 pandemic, cryptocurrency exchange Kraken experienced an 83% increase in the number of account signups over the week of bitcoin's price collapse, a result of buyers looking to capitalize on the low price.\n\nOn 13 March 2020, bitcoin fell below \$4000 during a broad COVID-19 pandemic related market selloff, after trading above \$10,000 in February 2020.",
                            style: TextStyle(),
                          ),
                          SizedBox(height: kPadding),
                          Row(
                            children: [
                              Spacer(),
                              Text("Investors (33) ",
                                  style: TextStyle(fontSize: 15)),
                              Icon(Icons.star,
                                  color: Theme.of(context).primaryColor),
                              Icon(Icons.star,
                                  color: Theme.of(context).primaryColor),
                              Icon(Icons.star,
                                  color: Theme.of(context).primaryColor),
                              Icon(Icons.star,
                                  color: Theme.of(context).primaryColor),
                              Icon(Icons.star_half,
                                  color: Theme.of(context).primaryColor),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              TopBarDescription(),
              Divider(thickness: 1),
              Expanded(
                child: ResponsiveLayout.webMode(context)
                    ? Scrollbar(
                        controller: _slidingInYourDMs,
                        isAlwaysShown: true,
                        showTrackOnHover: true,
                        child: _theDescriptionPageThatWillScroll(),
                      )
                    : _theDescriptionPageThatWillScroll(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
