import 'package:eduapp/widgets/description_section.dart';
import 'package:flutter/material.dart';

import '../widgets/video_section.dart';

// ignore: must_be_immutable
class CouseScreen extends StatefulWidget {
  String img;
  CouseScreen(this.img, {super.key});

  @override
  State<CouseScreen> createState() => _CouseScreenState();
}

class _CouseScreenState extends State<CouseScreen> {
  bool isVideosSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color(0xFF674AEF),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFF5F3FF),
                image: DecorationImage(
                  image: AssetImage('images/${widget.img}.png'),
                ),
              ),
              child: Center(
                  child: Container(
                padding: const EdgeInsets.all(5),
                decoration:
                    const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: Color(0xFF674AEF),
                  size: 45,
                ),
              )),
            ),
           const SizedBox(
              height: 15,
            ),
            Text(
              '${widget.img} Complete Course',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Created by Pleum and Dit',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '55 videos',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      //if is videosection is true then other color and else andthor color
                      color: isVideosSection
                          ? const Color(0xFF674AEF)
                          : const Color(0xFF674AEF).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isVideosSection = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 35),
                          child: const Text(
                            'คำอธิบาย',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: isVideosSection
                          ? const Color(0xFF674AEF).withOpacity(0.6)
                          : const Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isVideosSection = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 35),
                          child: const Text(
                            'วีดีโอ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),

            //we well  create 2 different section for video section and description section
            const SizedBox(
              height: 10,
            ),
            //if isVideoSection condition is true  then VideoSection will be shown
            //and if condition is false it means DescriptionSection will be Shown
            isVideosSection ? VideoSection() : DescriptionSection(),
          ],
        ),
      ),
    );
  }
}