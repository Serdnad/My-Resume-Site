// Copyright (c) 2017, Andres. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:async';

Future main() async {
  var textDeveloper = querySelector("#text_developer");
  var textMusician = querySelector("#text_musician");
  var textStudent = querySelector("#text_student");
  var textLook = querySelector("#text_look");
  var textCompletions = ["Developer.", "Musician.", "Student.", "Take a Look...?"];


  for(int i = 0; i < textCompletions.length; i++) {
    for (int j = 0; j <= textCompletions[i].length; j++) {
      await new Future.delayed(const Duration(milliseconds: 200));
      switch(i) {
        case 0: textDeveloper.text = textCompletions[i].substring(0, j); break;
        case 1: textMusician.text = textCompletions[i].substring(0, j); break;
        case 2: textStudent.text = textCompletions[i].substring(0, j); break;
        case 3: textLook.text = textCompletions[i].substring(0, j); break;
      }
    }
  }
}
