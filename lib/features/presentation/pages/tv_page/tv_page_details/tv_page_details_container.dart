import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TvPageDetailsContainer extends StatelessWidget {
  const TvPageDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Image.asset(
            "assets/img/slider.png",
            height: 148,
            width: 110,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Chakka Panja 4",
                style: normalStyle.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                "(2023)",
                style: smallStyle.copyWith(
                    color: Color.fromRGBO(102, 112, 133, 1)),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color.fromRGBO(237, 28, 36, 1)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                      child: Text(
                        "HD",
                        style: smallStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  SvgPicture.asset("assets/svg/star2.svg"),
                  SizedBox(width: 7),
                  Text(
                    "0",
                    style: smallStyle,
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.watch_later_outlined),
                  SizedBox(width: 7),
                  Text(
                    "145 min",
                    style: smallStyle,
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(color: Color.fromRGBO(237, 28, 36, 1)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/svg/youtube.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Watch Trailer",
                      style: smallStyle.copyWith(
                          color: Color.fromRGBO(237, 28, 36, 1)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
