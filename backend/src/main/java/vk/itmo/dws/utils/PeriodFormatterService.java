package vk.itmo.dws.utils;

import java.time.Period;

public class PeriodFormatterService {

    public static String formatPeriod(Period period) {
        StringBuilder result = new StringBuilder();

        if(period == null){
            return "";
        }
        if (period.getYears() > 0) {
            result.append(period.getYears()).append(" год").append(period.getYears() > 1 ? "а" : "").append(" ");
        }
        if (period.getMonths() > 0) {
            result.append(period.getMonths()).append(" месяц").append(period.getMonths() > 1 ? "а" : "").append(" ");
        }
        if (period.getDays() > 0) {
            result.append(period.getDays()).append(" день").append(period.getDays() > 1 ? "я" : "").append(" ");
        }

        return result.toString().trim();
    }
}
