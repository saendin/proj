package dev.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dev.Utils;
import dev.service.BoardService;

public class PostListController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		String loginId = "user1";
		HttpSession ss = req.getSession();
		ss.setAttribute("loginId", loginId);
		
	
		
//		String loginId = (String) req.getSession().getAttribute("loginId");
		
		
		BoardService boardService = BoardService.getBoardService();
		
		req.setAttribute("boardList", boardService.boardList());
		Utils.forward(req, resp, "boardView/postList.jsp");
	}

}
