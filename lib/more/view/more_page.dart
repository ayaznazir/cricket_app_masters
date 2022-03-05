import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/svg/live_match.svg'),
                SizedBox(width: context.minBlockVertical * 2.0),
                Text(
                  'Live Matches',
                  style: CsTextStyle.caption.copyWith(
                    fontWeight: CsFontWeight.medium,
                  ),
                )
              ],
            ),
            SizedBox(height: context.minBlockVertical * 2.0),
            const Divider(),
            SizedBox(height: context.minBlockVertical * 2.0),
            Row(
              children: [
                SvgPicture.asset('assets/svg/live_match.svg'),
                SizedBox(width: context.minBlockVertical * 2.0),
                Text(
                  'Scores',
                  style: CsTextStyle.caption.copyWith(
                    fontWeight: CsFontWeight.medium,
                  ),
                )
              ],
            ),
            SizedBox(height: context.minBlockVertical * 2.0),
            const Divider(),
            SizedBox(height: context.minBlockVertical * 2.0),
            Row(
              children: [
                SvgPicture.asset('assets/svg/live_match.svg'),
                SizedBox(width: context.minBlockVertical * 2.0),
                Text(
                  'Ranking',
                  style: CsTextStyle.caption.copyWith(
                    fontWeight: CsFontWeight.medium,
                  ),
                )
              ],
            ),
            SizedBox(height: context.minBlockVertical * 2.0),
            const Divider(),
            SizedBox(height: context.minBlockVertical * 2.0),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/point.svg'),
                  SizedBox(width: context.minBlockVertical * 2.0),
                  Text(
                    'Point Table',
                    style: CsTextStyle.caption.copyWith(
                      fontWeight: CsFontWeight.medium,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: context.minBlockVertical * 2.0),
            const Divider(),
            SizedBox(height: context.minBlockVertical * 2.0),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/point.svg'),
                  SizedBox(width: context.minBlockVertical * 2.0),
                  Text(
                    'Match Request',
                    style: CsTextStyle.caption.copyWith(
                      fontWeight: CsFontWeight.medium,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: context.minBlockVertical * 2.0),
            const Divider(),
            SizedBox(height: context.minBlockVertical * 2.0),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/point.svg'),
                  SizedBox(width: context.minBlockVertical * 2.0),
                  Text(
                    'Rate Us',
                    style: CsTextStyle.caption.copyWith(
                      fontWeight: CsFontWeight.medium,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: context.minBlockVertical * 2.0),
            const Divider(),
            SizedBox(height: context.minBlockVertical * 2.0),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/updates.svg'),
                  SizedBox(width: context.minBlockVertical * 2.0),
                  Text(
                    'Updates',
                    style: CsTextStyle.caption.copyWith(
                      fontWeight: CsFontWeight.medium,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: context.minBlockVertical * 2.0),
            const Divider(),
            SizedBox(height: context.minBlockVertical * 2.0),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/invite.svg'),
                  SizedBox(width: context.minBlockVertical * 2.0),
                  Text(
                    'invite',
                    style: CsTextStyle.caption.copyWith(
                      fontWeight: CsFontWeight.medium,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
