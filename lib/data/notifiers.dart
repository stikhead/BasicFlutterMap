//valueNotifier: hold data
//vallueListenableBuilder: listen to data ( dont need setstate )

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> currentBrightnessDark = ValueNotifier(true);
