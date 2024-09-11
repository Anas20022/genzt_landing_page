import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../datahandler/colors.dart';

///
/// - Method Name : DialogBuilder.
/// - Parameters  :
///   -
/// - Description :
///
void DialogBuilder(BuildContext context, List<Widget> ContainerWidget,
    {bool isDismissible = true}) {
  showDialog(
    context: context,
    barrierDismissible: isDismissible,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 2,
        insetPadding: const EdgeInsets.all(25),
        backgroundColor: const Color(0xff000433),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          side: BorderSide(
            color: Color(0xFF00E3FF),
            width: 2,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xff000433),
            borderRadius: BorderRadius.circular(5),
          ),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Tooltip(
                        message: 'close',
                        child: SizedBox(
                          child: Icon(
                            Icons.close,
                            color: Color(0xFF00E3FF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(children: ContainerWidget),
              ],
            ),
          ),
        ),
      );
    },
  );
}

/////////////////////////////////////////////////////////////////////////////////
