import 'package:age/age.dart';

class Age_Calculation {
  calculateAge(DateTime today, DateTime birthday) {
    AgeDuration age;

    age = Age.dateDifference(
        fromDate: birthday, toDate: today, includeToDate: false);

    print(age.years);

    return age;
  }

  nextBirthday(DateTime today, DateTime birthday) {
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);

    DateTime nextBirthdayDate = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;

    AgeDuration nextBirthdayDuration =
        Age.dateDifference(fromDate: today, toDate: nextBirthdayDate);

    return nextBirthdayDuration;
  }

  int nextBirthdayWeek(DateTime today, DateTime birthday) {
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);

    DateTime nextBirthdayDate = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;

    return nextBirthdayDate.weekday;
  }
}
