package dev.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.domain.Board;
import dev.service.BoardService;

public class BoardDetailController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		int brdId = Integer.parseInt(req.getParameter("boardId"));
		String memId = req.getParameter("memberId");
		String title = req.getParameter("title");
		String cont = req.getParameter("content");
		String cDate = req.getParameter("createDate");
		int hits = Integer.parseInt(req.getParameter("hits"));
		
		Board board = new Board();
		board.setBoardId(brdId);
		board.setMemberId(memId);
		board.setTitle(title);
		board.setContent(cont);
		board.setCreateDate(cDate);
		board.setHits(hits);
		
		BoardService boardService = BoardService.getBoardService();
		boardService.intoPost(brdId);
		
		req.setAttribute("board", board);
		
	}

}
