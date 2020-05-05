class DateUtil {
  static String weekDayShort(int day) {
    switch (day) {
      case 1:
        return 'MON';
        break;
      case 2:
        return 'TUE';
        break;
      case 3:
        return 'WED';
        break;
      case 4:
        return 'THU';
        break;
      case 5:
        return 'FRI';
        break;
      case 6:
        return 'SAT';
        break;
      case 7:
        return 'SUN';
        break;
      default:
        return '';
    }
  }
  static String weekDayLong(int day) {
    switch (day) {
      case 1:
        return 'MONDAY';
        break;
      case 2:
        return 'TUESDAY';
        break;
      case 3:
        return 'WEDNESDAY';
        break;
      case 4:
        return 'THURSDAY';
        break;
      case 5:
        return 'FRIDAY';
        break;
      case 6:
        return 'SATURDAY';
        break;
      case 7:
        return 'SUNDAY';
        break;
      default:
        return '';
    }
  }
}
