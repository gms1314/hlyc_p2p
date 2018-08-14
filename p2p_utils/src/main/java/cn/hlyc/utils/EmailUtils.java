package cn.hlyc.utils;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;

public class EmailUtils {
	
	//��̨��������ַ��
	private static String domainName="/config/EmailAuthentication.properties";
	//��̨��������ַ
	private static String backgroundUrl="/config/config.properties";
	
	public  Properties getProperties() throws IOException {
		Properties ip = new Properties();  
		try {
			InputStream url=getClass().getResourceAsStream(domainName);
			ip.load(url); 
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return ip;
	}
	
	public  Properties getBackgroundUrl() throws IOException {
		Properties p = new Properties();  
		try {
			InputStream in=getClass().getResourceAsStream(backgroundUrl);
			p.load(in); 
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}   
		return p;
	}
	/**
	 * ��֤����
	 * 
	 * @param email  �û�����
	 * @return
	 */
	public static boolean checkEmail(String email) {
		boolean flag = false;
		try {
			String check = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
			Pattern regex = Pattern.compile(check);
			Matcher matcher = regex.matcher(email);
			flag = matcher.matches();
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}

	public static void main(String[] args) {
			System.out.println(checkEmail("13776325519@163.com"));
			
	}
	/**
	 * 	�ʼ�����
	 * @param email �û������
	 * @param enc ���ܺ���û�Id
	 * @return    ������������
	 */
	public static String getMailCapacity(String email,String enc,String username){
		
		try {
			if(!(StringUtils.isEmpty(email.trim()) && StringUtils.isEmpty(enc.trim()) && StringUtils.isEmpty(username.trim()))){
				StringBuffer sb = new StringBuffer();
				sb.append("�װ���"+username+",����!");
				sb.append("<br>");
				sb.append("</br>");
				sb.append("��л��ע�ᣬ����¼�������ʺ�Ϊ  "+email);
				sb.append("<br>");
				sb.append("</br>");
				sb.append("������������Ӽ�����ɼ��");
				sb.append("<br>");
				sb.append("</br>");
				String url = getUrl("home.url");
				sb.append("<a href=\""+url+enc); //������·�� 
				sb.append("\">");
				sb.append(url+enc);// ������·��
				sb.append("</a>");
				System.out.println(sb.toString());
				return sb.toString();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return "";
	}
	/**
	 * ��ȡproperites �ļ��е�ֵ
	 * @param key 
	 * @return
	 * @throws IOException
	 */
	public static String getUrl(String key) throws IOException{
		Properties props = new EmailUtils().getProperties();
		String path = props.getProperty(key);
		return path;
	}
	
	
	
	
	/**   ����
	 * sb.append("<a href=\"http://"+path+"/api/emailAuth/emailactivation.do?us="+enc); //������·�� 
				sb.append("\" >");
				sb.append("http://"+path+"/api/emailAuth/emailactivation.do?us="+enc);/* ������·��
				sb.append("</a>");
	 */
}
