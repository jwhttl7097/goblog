package com.sesoc.report;


import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sesoc.report.dao.PostListDAO;
import com.sesoc.report.vo.LikeVO;
import com.sesoc.report.vo.PostVO;
import com.sesoc.report.vo.ReplyVO;
import com.sesoc.report.vo.TagVO;

@Controller
public class HomeController {
	
	@Autowired
	private PostListDAO postListDao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model, HttpSession session) {
		// 인기글 보여주기
		ArrayList<PostVO> hitlist = postListDao.hitRead();
		// 게시글 번호 획득
		int post_no = postListDao.hitPost_no();
		// 해시태그 목록 획득
		ArrayList<TagVO> taglist = postListDao.getTag(post_no);
		// 해시태그 구분자 추가하기
		String tag_name = "";
		for(TagVO tag : taglist) {
			tag_name += tag.getTag_name()+',';
		}
		// 좋아요 객체 생성
		LikeVO likeVO = new LikeVO();
		// 로그인된 세션객체에서 사용자 아이디 획득
		String user_id = (String)session.getAttribute("user_id");
		if(user_id != null){
			HashMap<String, Object> hashMap = new HashMap<String, Object>();
			hashMap.put("post_no", post_no);
			hashMap.put("user_id", user_id); 
			if(postListDao.countbyLike(hashMap) == 0) {
				postListDao.create(hashMap);
			}
			likeVO = postListDao.like_read(hashMap);
		}
		PostVO vo = postListDao.postRead(post_no);
		ArrayList<ReplyVO> hitReplyList = postListDao.replyList(post_no);
		int replyCnt = postListDao.replyCnt(post_no);
		
		model.addAttribute("replyCnt", replyCnt);
		model.addAttribute("like_check", likeVO.getLike_check());
		model.addAttribute("like_cnt", vo.getLike_cnt());
		model.addAttribute("hitReplyList", hitReplyList);
		model.addAttribute("tag_name", tag_name);
		model.addAttribute("hitlist", hitlist);
		return "index";
	}
	
	//about컨트롤러
	@RequestMapping(value = "about", method = RequestMethod.GET)
	public String about() {
		return "about";
	}
	
	//post컨트롤러
		@RequestMapping(value = "post", method = RequestMethod.GET)
		public String post() {
			return "post";
		}
		
	//contact컨트롤러
	@RequestMapping(value = "contact", method = RequestMethod.GET)
	public String contact() {
		return "contact";
	}
	

}
