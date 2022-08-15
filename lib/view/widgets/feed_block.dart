part of view;

class FeedBlock extends StatefulWidget {
  FeedBlock(
      {Key? key, required this.style, required this.title, required this.data})
      : super(key: key);

  final BlockStyle style;
  final String title;
  final String data;

  @override
  State<FeedBlock> createState() => _FeedBlockState();
}

class _FeedBlockState extends State<FeedBlock> {
  GlobalKey txtKey = GlobalKey();
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          Container(
            height: 100.0,
            width: MediaQuery.of(context).size.width,
            color: getColor(widget.style),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: AnimatedSize(
              alignment: Alignment.topCenter,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOut,
              child: Container(
                height: isExpanded ? null : 200.0,
                color: Palette.white,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(widget.title),
                    ),
                    Html(
                      data: widget.data,
                      shrinkWrap: true,
                    ),
                    // ClipRRect(
                    //   child: BackdropFilter(
                    //     filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    //     child: Container(height: 30.0),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
    );
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
