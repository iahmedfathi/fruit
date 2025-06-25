import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget  {
  const BuildAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(80); 
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SizedBox.shrink(),
      leadingWidth: 0,
      title: Row(
        children: [
          SvgPicture.asset("assets/icons/motor.svg"),
          SizedBox(width: 10,),
          Text("61 Hopper street..",style: TextStyle(fontSize: 19)),
          SizedBox(width: 10,),
          Icon(Icons.keyboard_arrow_down_rounded,size: 34),
          Spacer(),
          SvgPicture.asset("assets/icons/basket.svg"),
        ],
      ),
    );
  }
}
