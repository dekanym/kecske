void main() {
  int currentHours = 14;
  int currentMinutes = 34;
  int currentSeconds = 42;

  Duration fullDay = Duration(hours: 24, minutes: 0, seconds: 0);
  Duration currentTime = Duration(
      hours: currentHours, minutes: currentMinutes, seconds: currentSeconds);

  Duration remainingTime = fullDay - currentTime;

  print(remainingTime.inSeconds);
}
