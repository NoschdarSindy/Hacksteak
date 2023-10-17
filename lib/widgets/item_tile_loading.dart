import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hacksteak/constants.dart';
import 'package:shimmer/shimmer.dart';

import '../cubits/prefs/settings/settings_cubit.dart';

class ItemsListTileViewLoading extends StatelessWidget {
  const ItemsListTileViewLoading(
      {super.key, required this.primaryHeight, required this.secondaryHeight});

  final double primaryHeight, secondaryHeight;

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;

    return Shimmer.fromColors(
        baseColor: Theme.of(context).secondaryHeaderColor,
        highlightColor: const Color(0xFFDDDDDD),
        child: ListTile(
            contentPadding: EdgeInsets.all(8.spMin),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var i = 0; i < 2; i++)
                  FractionallySizedBox(
                    widthFactor: 0.9, // 90% of the available width
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          7.0), // Adjust the radius as needed
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 1.spMin),
                        height: primaryHeight,
                        // 2.spMin,
                        color: Colors.green,
                      ),
                    ),
                  ),
                FractionallySizedBox(
                  widthFactor: 0.7, // 70% of the available width
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        7.0), // Adjust the radius as needed
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      height: secondaryHeight,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            )));
  }
}
