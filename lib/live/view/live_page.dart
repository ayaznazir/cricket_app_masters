import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LivePage extends StatelessWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const LiveCard(),
            SizedBox(height: context.minBlockVertical * 3.0),
            const LiveCard(),
            SizedBox(height: context.minBlockVertical * 3.0),
            const LiveCard(),
          ],
        ),
      ),
    );
  }
}

class LiveCard extends StatelessWidget {
  const LiveCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset(4, 5),
            color: Color.fromRGBO(0, 0, 0, 0.17),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/png/live_bg.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Color.fromRGBO(0, 29, 78, 0.92),
                  BlendMode.overlay,
                ),
              ),
              gradient: LinearGradient(
                tileMode: TileMode.mirror,
                colors: [
                  Color.fromRGBO(0, 29, 78, 0.92),
                  Color.fromRGBO(0, 29, 78, 0.62),
                ],
              ),
              // borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Image.asset('assets/png/live_img1.png'),
                const Spacer(),
                SvgPicture.asset('assets/svg/vs_icon.svg'),
                const Spacer(),
                Image.asset('assets/png/live_img2.png'),
              ],
            ),
          ),
          SizedBox(height: context.minBlockVertical * 2.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text('INDIA vs BANGLADESH - 3rd T20I'),
                    SizedBox(width: context.minBlockVertical * 2.0),
                    Row(
                      children: [
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD40026),
                          ),
                        ),
                        SizedBox(width: context.minBlockVertical),
                        const Text('Live'),
                      ],
                    ),
                  ],
                ),
                const Text('Resulations'),
                SizedBox(height: context.minBlockVertical * 2.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    LiveButton(
                      text: 'HD',
                      colors: [
                        Color.fromRGBO(22, 58, 118, 1),
                        Color.fromRGBO(251, 82, 102, 1),
                      ],
                    ),
                    LiveButton(
                      text: 'MID',
                      colors: [
                        Color.fromRGBO(22, 58, 118, 1),
                        Color.fromRGBO(244, 130, 99, 1),
                      ],
                    ),
                    LiveButton(
                      text: 'LOW',
                      colors: [
                        Color.fromRGBO(22, 58, 118, 1),
                        Color.fromRGBO(200, 146, 146, 1),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LiveButton extends StatelessWidget {
  const LiveButton({
    Key? key,
    required this.text,
    required this.colors,
  }) : super(key: key);

  final String text;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(4),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              // center: const Alignment(0.0, 1.0),
              // stops: const [0.0, 1.0],
              colors: colors,
              radius: 1.0,
            ),
          ),
          child: Text(
            text,
            style: CsTextStyle.caption.copyWith(
              color: CsColors.white,
              fontWeight: CsFontWeight.semiBold,
            ),
          ),
        ),
      ),
    );
  }
}
