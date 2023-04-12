import 'dart:io';

import 'package:flutter/material.dart';
import 'package:v1/multi.dart';

import 'muilti1.dart';
void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Mutification(),
          'next':(context)=>muti(),
        },
      )
  );
}