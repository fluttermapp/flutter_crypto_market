class ProductItem {
  final String image, title;
  final int amount, uid;
  ProductItem({
    this.uid,
    this.image,
    this.title,
    this.amount,
  });
}

List<ProductItem> products = [
  ProductItem(
    uid: 1,
    title: "Bitcoin",
    amount: 50196,
    image: "images/bitcoin.png",
  ),
  ProductItem(
    uid: 2,
    title: "Ethereum",
    amount: 2238,
    image: "images/ethereum.png",
  ),
  ProductItem(
    uid: 3,
    title: "Binance",
    amount: 497,
    image: "images/binance_coin.png",
  ),
  ProductItem(
    uid: 4,
    title: "Tether",
    amount: 1,
    image: "images/tether.png",
  ),
  ProductItem(
    uid: 5,
    title: "XRP",
    amount: 1,
    image: "images/xrp.png",
  ),
  ProductItem(
    uid: 6,
    title: "Cardano",
    amount: 1,
    image: "images/cardano.png",
  ),
  ProductItem(
    uid: 7,
    title: "Dogecoin",
    amount: 1000,
    image: "images/dogecoin.png",
  ),
  ProductItem(
    uid: 8,
    title: "Litecoin",
    amount: 228,
    image: "images/litecoin.png",
  ),
];
