package dev.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.Utils;
import dev.domain.Board;
import dev.service.BoardService;
//게시글 등록 컨트롤러
public class PostAddController implements Controller {
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 로그인 아이디 세션에서 가져오기
		String loginId = (String) req.getSession().getAttribute("loginId");
		loginId = "user1";
		String title = req.getParameter("title");
		String cont = req.getParameter("content");

		System.out.println(title);
		System.out.println(cont);

		Board board = new Board();
		board.setMemberId(loginId);
		board.setTitle(title);
		board.setContent(cont);		
		
		
		BoardService boardService = BoardService.getBoardService();
		boardService.addPost(board);
		
		req.setAttribute("boardDetail", board);
		
		
		
		//글 등록 후 디테일로 돌아가도록
		Utils.forward(req, resp, "boardView/postDetail.jsp");
	}

}
