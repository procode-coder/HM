import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthyme/features/menu_items_list/data/models/menu_items_model.dart';
import 'package:healthyme/features/menu_items_list/presentation/widgets/menu_items.dart';
import 'package:healthyme/router/router_url.dart';
import 'package:healthyme/utils/hm_colors.dart';
import 'package:healthyme/utils/hm_typography.dart';
import 'package:healthyme/utils/ui_helpers.dart';

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("************************************************************");
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        color: HMColors.sky,
      ),
      child: Column(
        children: [
          Text(
            "HM",
            style: HmTextStyle.headingH1.copyWith(color: HMColors.white),
          ),
          UIHelpers.verticalSpaceLarge,
          UIHelpers.verticalSpaceLarge,
          UIHelpers.verticalSpaceLarge,
          Column(
            children:
                menuItems.map((item) => _buildMenuItem(context, item)).toList(),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              GoRouter.of(context).go(MyAppRouteUrl.logoutRouteName);
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: HMColors.white),
                  borderRadius: BorderRadius.circular(6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.logout_outlined,
                    color: HMColors.white,
                  ),
                  UIHelpers.horizontalSpaceRegular,
                  Text(
                    "Log-Out",
                    style: HmTextStyle.large.copyWith(color: HMColors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, MenuItem item) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).go(item.routeName);
      },
      child: Column(
        children: [
          Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  item.icon,
                  color: HMColors.white,
                ),
                UIHelpers.horizontalSpaceRegular,
                Text(
                  item.label,
                  style: HmTextStyle.large.copyWith(color: HMColors.white),
                ),
              ],
            ),
          ),
          UIHelpers.listDivider,
        ],
      ),
    );
  }
}
