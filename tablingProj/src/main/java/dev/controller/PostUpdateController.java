package dev.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.Utils;
import dev.domain.Board;
import dev.service.BoardService;

public class PostUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 로그인 아이디, 세션에서 가져오기
		String loginId = (String) req.getSession().getAttribute("loginId");
		loginId = "user1";
		
		//값 받아올 속성
		String boardId = req.getParameter("boardId");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		Board board = new Board();
		board.setBoardId(Integer.parseInt(boardId));
		board.setMemberId(loginId);
		board.setTitle(title);
		board.setContent(content);
		
		//실행할 서비스
		BoardService bdService = BoardService.getBoardService();
		bdService.updatePost(board);
		
		//요청에 board 속성 값 담을 변수 지정
		req.setAttribute("board",board);
		
		Utils.forward(req, resp, "postDetail.do");
		
		
		
	}

}
