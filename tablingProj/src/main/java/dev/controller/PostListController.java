package dev.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.Utils;
import dev.service.BoardService;

public class PostListController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		
		BoardService boardService = BoardService.getBoardService();
		boardService.boardList();
		
		req.setAttribute("boardList", boardService.boardList());
		Utils.forward(req, resp, "boardView/postList.jsp");
	}

}
