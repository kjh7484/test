package blog.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.sun.java.swing.plaf.windows.resources.windows;

import blog.dao.Blog_BoardDAO;
import blog.dao.Blog_OptionDAO;


@Controller
public class BlogController {
	/*@Autowired
	private Blog_BoardDAO boardDAO;
	@Autowired
	private Blog_OptionDAO optionDAO;*/

	@RequestMapping(value="/login.do")
	public ModelAndView adminHome(HttpServletRequest request, HttpServletResponse response) throws Exception{
		return new ModelAndView("WEB-INF/blog/main.jsp");
	}
	
	@RequestMapping(value="/blogStart.blog")
	public ModelAndView blogStart(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("WEB-INF/blog/index.jsp");
		String id = "admin";
		mav.addObject("id", id);
		return mav;
	}
		
	@RequestMapping(value="/blogMake.blog")
	public ModelAndView blogMake(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("WEB-INF/blog/makeBlog.jsp");
		String id = request.getParameter("id");
		mav.addObject("id", id);
		return mav;
	}
	
	@RequestMapping(value="/blogMake2.blog")
	public ModelAndView blogMake2(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("WEB-INF/blog/makeBlog2.jsp");
		String id = request.getParameter("id");
		mav.addObject("id", id);
		return mav;
	}
}
