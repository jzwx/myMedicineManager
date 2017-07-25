package com.my.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Util {
	public static String generateFileName(String picFileName) {
		DateFormat format = new SimpleDateFormat("yyyyMMddhhmmssSS"); //�γ�ʱ���ʽ����������ʱ�������
		Date mydate = new Date();                                     //Ĭ�ϻ��õ�ǰ��ʱ��
		String strformdate = format.format(mydate);   				  //�Ե�ǰʱ����и�ʽ������������Ӧ���ַ���
		String prefilename = picFileName.substring(0, picFileName
				.lastIndexOf("."));                                   //ȡԭ�ļ����ƣ���������׺
		String lastfilename = picFileName.substring(picFileName
				.lastIndexOf("."), picFileName.length());             //ȡ�ļ����Ƶĺ�׺
		return prefilename + strformdate + lastfilename;			  //����������ƴ���µ������ַ���
	}
}
