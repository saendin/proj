package dev.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.domain.Board;
import dev.service.BoardService;

public class PostUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		//값 받아올 속성
		String boardId = req.getParameter("boardId");
		String memId = req.getParameter("memberId");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String cDate = req.getParameter("createDate");
		String hits = req.getParameter("hits");
		
		Board board = new Board();
		board.setBoardId(Integer.parseInt(boardId));
		board.setMemberId(memId);
		board.setTitle(title);
		board.setContent(content);
		board.setCreateDate(cDate);
		board.setHits(Integer.parseInt(hits));
		
		//실행할 서비스
		BoardService bdService = BoardService.getBoardService();
		bdService.updatePost(board);
		
		//요청에 board 속성 값 담을 변수 지정
		req.setAttribute("board",board);
		
		
		
	}

}
