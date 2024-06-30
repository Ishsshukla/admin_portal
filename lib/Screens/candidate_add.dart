import 'package:admin_portal/Screens/loader.dart';
import 'package:admin_portal/Widgets/Custom_Container.dart';
import 'package:admin_portal/Widgets/Graph.dart';
import 'package:admin_portal/Widgets/custom_studentFeedback_listCard.dart';
import 'package:admin_portal/components/custom_candidate_detail_card.dart';
import 'package:admin_portal/components/custom_inputfield.dart';
import 'package:admin_portal/components/registered_candidate_card.dart';
import 'package:admin_portal/constants/constants.dart';
import 'package:admin_portal/screens/leadertabel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class candidateAdd extends StatefulWidget {
  const candidateAdd({super.key});

  @override
  State<candidateAdd> createState() => _candidateAddState();
}

class _candidateAddState extends State<candidateAdd> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double heightFactor = constraints.maxHeight / 1024;
          double widthFactor = constraints.maxWidth / 1440;

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15 * widthFactor),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Expanded(
                  // child:
                  CustomRoundedContainer(
                    child: customInputField(),
                    height: heightFactor * 840,
                    width: widthFactor * 850,
                    padding: EdgeInsets.all(10 * widthFactor),
                    margin: EdgeInsets.all(20 * widthFactor),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.025,
                        horizontal: screenWidth * 0.006),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: backgroundColor,
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              color: primaryColor,
                            ),
                            child: Center(
                                child: Text(
                              "Registerd Candidate's",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 20),
                            )),
                            height: screenHeight * 0.08,
                            width: screenWidth * 0.28,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            width: screenWidth * 0.25,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  height: 40,
                                  width: screenWidth * 0.25,
                                  // height: screenHeight*0.01,
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      suffix: const Icon(
                                        Icons.search_rounded,
                                        color: Colors.grey,
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20),
                                      labelText: "Search something here...",
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              secondaryColor, // Change to light blue
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              secondaryColor, // Change to light blue
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              secondaryColor, // Change to light blue
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              secondaryColor, // Change to light blue
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //search box inserted
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.center,
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(5),
                          //         border: Border.all(
                          //           color: Colors.grey.shade600,
                          //         ),
                          //         color: Colors.white,
                          //         boxShadow: [
                          //           BoxShadow(
                          //             color: Colors.grey.shade100,
                          //             blurRadius: 100.0,
                          //             offset: Offset(1.0, 1.0),
                          //           )
                          //         ],
                          //       ),
                          //       height: screenHeight * 0.06,
                          //       width: screenWidth * 0.25,
                          //       child: TextField(
                          //         style: TextStyle(color: Colors.white),
                          //         decoration: InputDecoration(
                          //           suffix: const Icon(
                          //             Icons.search_rounded,
                          //             color: Colors.black,
                          //           ),
                          //           labelText: "Search something here...",
                          //           border: OutlineInputBorder(
                          //               borderSide: BorderSide(
                          //                 color: dividerColor,
                          //               ),
                          //               borderRadius: BorderRadius.circular(5)),
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ), //search box done

                          SizedBox(
                            width: screenWidth * 0.25,
                            child: SingleChildScrollView(
                              child: Column(children: [
                                // customDetailCard(
                                //     "Rahul Yadav", "2210045", context),
                                feedback_card(
                                    studentname: "Rahul Yadav",
                                    studenNo: "2210045"),
                                // feedback_card(
                                //     studentname: "Ashirwad", studenNo: "2210647"),
                                // feedback_card(
                                //     studentname: "Ashirwad", studenNo: "2210647"),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      width: screenWidth * 0.28,
                      height: screenHeight * 0.82,
                    ),
                  ),
                  // ),
                  // Expanded(
                  // child:
                  // CustomRoundedContainer(
                  //   child: registeredCandidate(),
                  //   height: heightFactor * 920,
                  //   width: widthFactor * 450,
                  //   padding: EdgeInsets.all(10 * widthFactor),
                  //   margin: EdgeInsets.all(20 * widthFactor),
                  //   color: Color.fromARGB(255, 255, 255, 255),
                  // ),
                  // ),
                  // SizedBox(width: 10 * widthFactor), // Add this line to adjust the space between the columns
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
