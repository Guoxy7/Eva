package com.changhong.test;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.changhong.dao.ProblemDao;
import com.changhong.dao.ResultDao;
import com.changhong.entities.Comment;
import com.changhong.entities.Problem;
import com.changhong.entities.Result;
import com.changhong.entities.Secondweight;
import com.changhong.service.CommentService;
import com.changhong.service.ProblemService;
import com.changhong.service.SecondWeightService;
import com.changhong.support.FinalConstant;

public class ServiceTest {

	private static ApplicationContext applicationContext;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
	}
	
	@Test
	public void test() throws ParseException {
		/*ResultDao resultDao = (ResultDao) applicationContext.getBean("resultDao");
		List<Result> results = resultDao.getResultsByEmployeeIdAndDate("20158935");
		System.out.println(results.get(0).getEmployee().getName());*/
		
		/*SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	     Date startdate = format.parse("2011-10-10");
	     Date enddate = format.parse("2016-10-10");
		ProblemDao problemDao = (ProblemDao) applicationContext.getBean("problemDao");
		int count = problemDao.getCommentAmountByEmployeeId("20158935", startdate, enddate);
		System.out.println("count = "+count);*/
		/*
		ResultDao resultDao = (ResultDao) applicationContext.getBean("resultDao");
		resultDao.getResult();*/
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date startdate = format.parse("2015-01-01");
	     Date enddate = format.parse("2015-12-31");
	     
	     ProblemService problemService = (ProblemService) applicationContext.getBean("problemService");
	     int pingshenTimes = problemService.getCountByCommentIdAndEmployeeIdAndDate("11020809", startdate, enddate);
	     List<Problem> problems = problemService.getProblems();
	     
	     System.out.println("pingshencishu = "+pingshenTimes+" problems .size = "+problems.size());
	     
	    /* SecondWeightService secondWeightService = (SecondWeightService) applicationContext.getBean("secondWeightService");
	     Secondweight secondweight_shejiguiding = secondWeightService.getSecondweightByModeIdAndType(1, FinalConstant.COMPLIANCE_enum.设计规定.toString());
	     System.out.println(secondweight_shejiguiding.getWeightly());*/
	   /*  
	     CommentService commentService = (CommentService) applicationContext.getBean("commentService");
	     
	     List<Comment> comments = commentService.findAll();
	     for (int i = 0; i < comments.size(); i++) {
			for (int j = 0; j < problems.size(); j++) {
				if (problems.get(j).getComment()!=null) {
					if (comments.get(i).getId().equals(problems.get(j).getComment().getId())) {
						Comment comment = comments.get(i);
						comment.setEmployeeId(problems.get(j).getEmployee().getId());
						commentService.updateEntity(comment);
						System.out.println("更新");
					}
				}
				
			}
		}*/
			
	}

}
