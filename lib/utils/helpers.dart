import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import 'app_colors.dart';
import 'dimensions.dart';

String getInitials(String fullname) => fullname.isNotEmpty
    ? fullname.trim().split(' ').map((l) => l[0]).take(2).join().toUpperCase()
    : '';

void displayToast(String msg, Color color) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    timeInSecForIosWeb: 4,
    backgroundColor: color,
    textColor: kWhiteColor,
    fontSize: kNormalText,
  );
}

String formatAudioTimer(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));
  return [
    if (duration.inHours > 0) hours,
    minutes,
    seconds,
  ].join(':');
}

int getHttpStatus(int status) {
  if (status == 401) {
    return 401;
  } else if (status >= 200 && status <= 209) {
    return 200;
  } else if (status >= 300 && status <= 309) {
    return 300;
  } else if (status >= 400 && status <= 409) {
    return 400;
  } else if (status >= 500 && status <= 509) {
    return 500;
  } else {
    return 0;
  }
}

String getMonthOnly(DateTime date) => DateFormat('MMM').format(date);

String getDayOfTheWeekOnly(DateTime date) => DateFormat('EEE').format(date);

String getDayOnly(DateTime date) => date.day.toString();

String getTimeOnly(DateTime date) => DateFormat.jm().format(date);

String getEventTimeSpan(DateTime startDate, DateTime endDate) {
  String startDt = getTimeOnly(startDate);
  String endDt = getTimeOnly(endDate);
  return '$startDt - $endDt';
}

String dateGroup(DateTime date) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = DateTime(now.year, now.month, now.day - 1);
  final nDate = DateTime(date.year, date.month, date.day);
  if (nDate == today) {
    return 'Today';
  } else if (nDate == yesterday) {
    return 'Yesterday';
  } else {
    return DateFormat("EEE, dd MMM, yyyy").format(date);
  }
}
String chatDateAndTime(DateTime date){
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = DateTime(now.year, now.month, now.day - 1);
  final nDate = DateTime(date.year, date.month, date.day);
  if (nDate == today) {
    return DateFormat.jm().format(date);
  } else if (nDate == yesterday) {
    return 'Yesterday';
  } else {
    return DateFormat("dd / MMM / yyyy").format(date);
  }
}
String timeAgo(DateTime date, {bool numericDates = true}) {
  //bool numericDates = true;
  final date2 = DateTime.now();
  final difference = date2.difference(date);

  if ((difference.inDays / 7).floor() >= 1) {
    return (numericDates) ? '1 week ago' : 'Few weeks ago';
  } else if (difference.inDays >= 2) {
    return '${difference.inDays} days ago';
  } else if (difference.inDays >= 1) {
    return (numericDates) ? '1 day ago' : 'Yesterday';
  } else if (difference.inHours >= 2) {
    return '${difference.inHours} hours ago';
  } else if (difference.inHours >= 1) {
    return (numericDates) ? '1 hour ago' : 'An hour ago';
  } else if (difference.inMinutes >= 2) {
    return '${difference.inMinutes} minutes ago';
  } else if (difference.inMinutes >= 1) {
    return (numericDates) ? '1 minute ago' : 'A minute ago';
  } else if (difference.inSeconds >= 3) {
    return '${difference.inSeconds} seconds ago';
  } else {
    return 'Just now';
  }
}

extension PrettyJson on Map<String, dynamic> {
  String toPrettyString() {
    var encoder = const JsonEncoder.withIndent("     ");
    return encoder.convert(this);
  }
}

String formatAmountInDollar(double value) =>
    "\$ ${NumberFormat("#,##0.00", "en_US").format(value)}";

String formatDate(DateTime value) => DateFormat("dd MMM, yyyy").format(value);
String formatDateByMonth(DateTime value) =>
    DateFormat("MMM, dd yyyy").format(value);
String formatDateWithTime(DateTime value) =>
    DateFormat("dd MMM, yyyy | hh:mm:ss").format(value);
String formatDateWithoutYear(DateTime value) =>
    DateFormat("EEEE d, MMM").format(value);
