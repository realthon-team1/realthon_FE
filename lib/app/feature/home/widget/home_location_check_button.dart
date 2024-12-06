import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/feature/home/logic/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeLocationCheckButton extends StatefulWidget {
  const HomeLocationCheckButton({Key? key}) : super(key: key);

  @override
  _HomeLocationCheckButtonState createState() =>
      _HomeLocationCheckButtonState();
}

class _HomeLocationCheckButtonState extends State<HomeLocationCheckButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() {
          isLoading = true;
        });
        await HomeController.to.checkLocation();
        setState(() {
          isLoading = false;
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: context.getColorScheme.primary,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 3),
              blurRadius: 3,
            ),
          ],
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.white,
                  ),
                )
              : Obx(() {
                  final isOk = HomeController.to.isFishLocationOk;
                  if (isOk == null) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.travel_explore,
                          color: Colors.white,
                        ),
                        Text(
                          "클릭",
                          style: context.getTextTheme.small.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    );
                  }
                  if (isOk == false) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                        Text(
                          "불가",
                          style: context.getTextTheme.small.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    );
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                      Text(
                        "가능",
                        style: context.getTextTheme.small.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  );
                }),
        ),
      ),
    );
  }
}
