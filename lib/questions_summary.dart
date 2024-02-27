import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Container(
                    color: Colors.red,
                    child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(fontSize: 15)),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['user_answer'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(185, 247, 30, 95),
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(171, 158, 250, 52),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
