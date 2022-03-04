import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    Key? key,
    @required this.items,
    this.onTap,
    this.currentIndex,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.iconSize = 40,
  }) : super(key: key);

  final ValueChanged<int>? onTap;
  final int? currentIndex;
  final List<AppBottomNavigationBarItem>? items;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final _tile = <Widget>[];
    for (var i = 0; i < items!.length; i++) {
      _tile.add(
        _AppBottomNavigationBarItemTile(
          items![i],
          onItemTap: () {
            if (onTap != null) onTap!(i);
          },
          selected: i == currentIndex!,
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(20),
      child: BottomAppBar(
        clipBehavior: Clip.hardEdge,
        color: CsColors.black,
        shape: AutomaticNotchedShape(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        )),
        child: Material(
          borderRadius: BorderRadius.circular(14),
          color: CsColors.black,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _tile,
          ),
        ),
      ),
    );
  }
}

class _AppBottomNavigationBarItemTile extends StatelessWidget {
  const _AppBottomNavigationBarItemTile(
    this.item, {
    this.onItemTap,
    this.selected,
  });

  final AppBottomNavigationBarItem item;
  final VoidCallback? onItemTap;
  final bool? selected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: GestureDetector(
          onTap: onItemTap,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBottomIcon(
                  imageName: item.customIcon,
                  isActive: selected,
                  hasCustomIcon: item.useCustomIcon,
                  icon: item.icon,
                ),
                const SizedBox(
                  height: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppBottomIcon extends StatelessWidget {
  const AppBottomIcon({
    Key? key,
    this.imageName,
    this.isActive,
    this.hasCustomIcon,
    this.icon,
  }) : super(key: key);

  final String? imageName;
  final bool? isActive;
  final bool? hasCustomIcon;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    if (hasCustomIcon! && imageName != null) {
      return SvgPicture.asset(
        isActive! ? '${imageName}_active'.svg : imageName!.svg,
        width: 24,
        height: 24,
        fit: BoxFit.cover,
        // color: isActive! ? CsColors.white : Colors.yellow,
      );
    } else {
      return Icon(
        icon,
        size: 27,
        color: isActive! ? CsColors.white : const Color(0xFFF0F0F0),
      );
    }
  }
}

class AppBottomNavigationBarItem {
  AppBottomNavigationBarItem({
    this.customIcon,
    String? label,
    this.icon,
    this.useCustomIcon = true,
  }) : label = label ?? '';

  final String? customIcon;
  final bool? useCustomIcon;
  final String? label;
  final IconData? icon;
}
