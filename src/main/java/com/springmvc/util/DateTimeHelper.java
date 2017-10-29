package com.springmvc.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeHelper {

	public static String convertDateToString(Date date, String format) {
		String dateString = "";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateString = sdf.format(date);
		return dateString;
	}
	
	public static Date convertStringToDate(String dateInString, String format) {
        try {
        	SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
            Date date = formatter.parse(dateInString);
            return date;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
	}
}
