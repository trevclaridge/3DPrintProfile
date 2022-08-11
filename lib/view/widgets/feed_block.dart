part of view;

class FeedBlock extends StatelessWidget {
  const FeedBlock({Key? key, required this.style, required this.title})
      : super(key: key);

  final BlockStyle style;
  final String title;

  @override
  Widget build(BuildContext context) {
    GlobalKey txtKey = GlobalKey();

    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: getTextHeight(txtKey),
              color: getColor(style),
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(-2.0, 2.0),
                        blurRadius: 2.0,
                        color: Colors.black87)
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                // height: getTextHeight(txtKey),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Text(title),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 70.0, top: 10.0, left: 12.0),
                        child: Html(
                            key: txtKey,
                            data:
                                "<p>Check out our Patreon page here: https://www.patreon.com/printminis :)</p>\r\n<p>In the download, you will receive:</p>\r\n<p>- Vala, the Cyber Saber-toothed tiger</p>\r\n<p>- A 60mm Scenic Dockside base to siplay her on (as seen in the printed images)</p>\r\n<p>All the miniatures are pre-supported for resin printing and have been thoroughly print tested! They are ready to simply download and get printing :D</p>\r\n<p><strong>Story of the Ironside Docks Collection</strong></p>\r\n<p>There is a civil war raging in the industrial city of New Haven. The Maslo Group heroes have risen up against the tyrannical leadership of The Authority, and the fight is currently at a stalemate. As more of the cities population join the rebels, Victor is loosing more and more control of his city. He has to end the war quickly!</p>\r\n<p>A few months ago, he sent out scouting parties to trade weapons with other powerful cities on Exosia, but what they found was so much better. On their journey, an incredible new energy source was discovered, something they've never seen before on the planet, and Victor is determined to make it into a weapon.</p>\r\n<p>Tonight we're at the Ironside Docks where the Wolfrum Combat ship is bringing home that secret cargo. The Authority is there to meet the delivery and unload it safely, ready for transport out of the city. Unfortunately, they're in the Iron Spikes territory and Mavros is not happy about this. He runs one of the largest and most dangerous crime syndicates in New Haven, and he's heard about the secret delivery. Wanting more power for himself, he plans to ambush the Volk and steal the shipment right from under Victor's nose! Will he be outmatched or can he secure this advantage for himself?</p>\r\n<p>The Maslo Group are also aware of the delivery and need to know what Victor is planning. They send their best drone pilot, Anastasia and her Bee drones to watch the events unfold and to gather intelligence. They cannot strike until they know what they're up against, and tonight they're going to see a brutal fight unfold.</p>\r\n<p>________________________________________________</p>\r\n<p>Vala the Cyber Tiger was first available on our Patreon channel in August 2021. You can get a fantastic discount on all our miniatures by being a subscriber: https://www.patreon.com/printminis. </p>\r\n<p>Don't forget to check out the rest of the Ironside Docks collection on our store!</p>"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }

  double getTextHeight(GlobalKey key) {
    final keyContext = key.currentContext;
    if (keyContext != null) {
      final txtBox = keyContext.findRenderObject() as RenderBox;
      print('height: ${txtBox.size.height} width: ${txtBox.size.width} ');
      return txtBox.size.height;
    }
    return 400.0;
  }

  Color getColor(BlockStyle blockStyle) {
    switch (blockStyle) {
      case BlockStyle.mmf:
        return Palette.mmfColor;
      case BlockStyle.patreon:
        return Palette.patreonColor;
      case BlockStyle.cults:
        return Palette.cultColor;
      case BlockStyle.gamebody:
        return Palette.gambodyColor;
      case BlockStyle.thingiverse:
        return Palette.thingiverseColor;
    }
  }
}
