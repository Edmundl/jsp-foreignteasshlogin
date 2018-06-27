package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.model.HibernateSessionFactory;
import com.model.User;

public class UserDao {
	public static String i;
	public static User isLogin(String no,String pwd,String identity)
	{
		Session session=HibernateSessionFactory.getSession();
		try {
			if(identity.equals("管理员")){
				i="1";
			}else if(identity.equals("外聘教师")){
				i="2";
			}else if(identity.equals("教学助理")){
				i="3";
			}
			System.out.println("1"+no);
			System.out.println("2"+pwd);
			System.out.println("3"+i);
			Criteria criteria=session.createCriteria(User.class);
			criteria.add(Restrictions.eq("username", no)).add(Restrictions.eq("password", pwd)).add(Restrictions.eq("identity", i));
			List<User> users=criteria.list();
			System.out.println(users.get(0).getUsername()+"+111");
			session.close();
			if(users.isEmpty())
			{
				System.out.println(users.get(0).getUsername()+"+1111111");
				return null;
			}else {
				return users.get(0);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
//	public static void deleteUser(int id)
//	{
//		Session session=HibernateSessionFactory.getSession();
//		try {
//			session.beginTransaction();
//			User user=(User)session.get(User.class, id);
//			session.delete(user);
//			session.getTransaction().commit();
//			session.clear();
//			session.close();
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//		
//	}
//	public static void addUser(String num,String name, String pwd)
//	{
//		Session session=HibernateSessionFactory.getSession();
//		User user=new User();
//		user.setName(name);
//		user.setNum(num);
//		user.setPassword(pwd);
//		try {
//			
//			
//			session.save(user);
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//		
//	}
	public static List<User> getAlluser()
	{
		Session session=HibernateSessionFactory.getSession();
		try {
			Criteria criteria=session.createCriteria(User.class);
			List<User> users=criteria.list();
		
			session.close();
			return users;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
}
