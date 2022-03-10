import 'package:cricket/core/core.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    this.id,
    this.title,
    this.format,
    this.teama,
    this.teamb,
    this.subTitle,
    this.abbr,
    this.isLive = false,
    this.statusNote,
    this.target,
    this.over,
  }) : super(key: key);

  final String? id;
  final String? title;
  final String? format;
  final Team? teama;
  final Team? teamb;
  final String? statusNote;
  final String? subTitle;
  final String? abbr;
  final bool isLive;
  final String? target;
  final String? over;

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
                    title ?? '',
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
                    format ?? '',
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
                            image: DecorationImage(
                              image: NetworkImage(teama!.logoUrl!),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: context.minBlockVertical),
                        Text(
                          teama?.name ?? '',
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
                          subTitle ?? '',
                          style: CsTextStyle.headline3.copyWith(
                            fontWeight: CsFontWeight.regular,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          abbr ?? '',
                          style: CsTextStyle.headline3.copyWith(
                            fontWeight: CsFontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Over : $over',
                          style: CsTextStyle.headline3.copyWith(
                            fontWeight: CsFontWeight.regular,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 3),
                        if (isLive)
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
                            image: DecorationImage(
                              image: NetworkImage(teamb!.logoUrl!),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: context.minBlockVertical),
                        Text(
                          teamb?.name ?? '',
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
                  statusNote ?? '',
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
                  'Target $target',
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
