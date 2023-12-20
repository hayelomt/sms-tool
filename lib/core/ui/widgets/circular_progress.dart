import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  final int curItemIndex;
  final int totalItems;

  const CircularProgress(
      {super.key, required this.curItemIndex, required this.totalItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 180,
            width: 180,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${totalItems == 0 ? '' : curItemIndex}',
                          style: const TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w200)),
                      const SizedBox(width: 5),
                      const Text('/',
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.w200)),
                      const SizedBox(width: 5),
                      Text('$totalItems',
                          style: const TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w200)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  width: 180,
                  child: FittedBox(
                    child: CircularProgressIndicator(
                      strokeWidth: 0.5,
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.2),
                      value: totalItems == 0 ? 0 : curItemIndex / totalItems,
                    ),
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
