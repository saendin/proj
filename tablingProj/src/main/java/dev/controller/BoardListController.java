package dev.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.Utils;
import dev.service.BoardService;

public class BoardListController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		
		BoardService service = BoardService.getInstance();
		service.boardList();
		
		req.setAttribute("boardList", service.boardList());
		Utils.forward(req, resp, "view/boardList.jsp");
	}

}
