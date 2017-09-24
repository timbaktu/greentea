package com.springmvc.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeHelper {

	public static String convertDateToString(Date date, String format) {
		String dateString = "";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateString = sdf.format(date);
		return dateString;
	}
}
