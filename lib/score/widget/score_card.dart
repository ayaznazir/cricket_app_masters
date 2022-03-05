import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({
    Key? key,
    required this.cardTitle,
  }) : super(key: key);

  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE4E5E6)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 24,
            decoration: const BoxDecoration(
              color: Color(0xFFF3F4F5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(7),
                bottomRight: Radius.circular(7),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Bangladesh Premier League',
                    style: CsTextStyle.caption.copyWith(
                      fontSize: 12,
                      fontWeight: CsFontWeight.regular,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 49,
                  height: 24,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEA364),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(7),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(7),
                    ),
                  ),
                  child: Text(
                    cardTitle,
                    style: CsTextStyle.caption.copyWith(
                      fontWeight: CsFontWeight.medium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 63,
                          width: 63,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFFA6A9B8)),
                            image: const DecorationImage(
                              image: AssetImage('assets/png/home_img1.png'),
                            ),
                          ),
                        ),
                        SizedBox(height: context.minBlockVertical),
                        Text(
                          'Mi Dhaka',
                          style: CsTextStyle.caption.copyWith(
                            fontWeight: CsFontWeight.medium,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          '12th match',
                          style: CsTextStyle.headline3.copyWith(
                            fontWeight: CsFontWeight.regular,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'DHK 145 - 3',
                          style: CsTextStyle.headline3.copyWith(
                            fontWeight: CsFontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Over : 16.0',
                          style: CsTextStyle.headline3.copyWith(
                            fontWeight: CsFontWeight.regular,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            Container(
                              height: 4.5,
                              width: 4.5,
                              decoration: const BoxDecoration(
                                color: Color(0xFFD40026),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Text(
                              ' Live',
                              style: CsTextStyle.headline3.copyWith(
                                fontWeight: CsFontWeight.regular,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          height: 63,
                          width: 63,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFFA6A9B8)),
                            image: const DecorationImage(
                              image: AssetImage('assets/png/home_img1.png'),
                            ),
                          ),
                        ),
                        SizedBox(height: context.minBlockVertical),
                        Text(
                          'Khulna Ti',
                          style: CsTextStyle.caption.copyWith(
                            fontWeight: CsFontWeight.medium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  'needs 58 Runs in 24 balls',
                  style: CsTextStyle.headline3.copyWith(
                    fontWeight: CsFontWeight.medium,
                    fontSize: 12,
                    color: CsColors.primary,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 24,
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFF3F4F5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CRR 8.56',
                  style: CsTextStyle.caption.copyWith(
                    fontWeight: CsFontWeight.medium,
                  ),
                ),
                Text(
                  'Target 203',
                  style: CsTextStyle.caption.copyWith(
                    fontWeight: CsFontWeight.medium,
                  ),
                ),
                Text(
                  'RR 10.6',
                  style: CsTextStyle.caption.copyWith(
                    fontWeight: CsFontWeight.medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
