import 'package:flutter/material.dart';

import '../../../../../api/api_constant.dart';
import '../../../../../utils/theme.dart';

class DocumentsViewContainer extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final String img;

  const DocumentsViewContainer(
      {super.key, required this.title, required this.img, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color.fromRGBO(245, 245, 245, 1)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // Image.asset("assets/svg/documentsImg.png"),
              (img == null || img == "" || img == "null")
                  ? Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(),
                      child: Image.asset(
                        "assets/svg/documentsImg.png",
                        fit: BoxFit.fill,
                      ))
                  : Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                        image: NetworkImage(
                          imageBaseUrl + "${img}",

                        ),
                            fit: BoxFit.cover,
                      )),
                    ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      title,
                      style: normalStyle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(237, 28, 36, 1)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                          child: Text(
                            "Download",
                            style: normalStyle.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: onTap,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(253, 229, 230, 1)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                            child: Text(
                              "Remove",
                              style: normalStyle.copyWith(
                                  color: Color.fromRGBO(31, 10, 15, 1)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
