package dev.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.Utils;
import dev.domain.Board;
import dev.repository.BoardRepository;
import dev.service.BoardService;

public class PostDetailController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		int bdId = Integer.parseInt(req.getParameter("id"));
//		String role = req.getParameter("role");

		BoardRepository bdRepo = new BoardRepository();
		Board board = bdRepo.getPost(bdId);

		req.setAttribute("board", board);
		Utils.forward(req, resp, "boardView/postDetail.jsp");

		/*
		 * if (role.equals("detail")) { Utils.forward(req, resp,
		 * "boardView/postDetail.jsp"); } else if (role.equals("add")) {
		 * Utils.forward(req, resp, "boardView/addPostForm.jsp"); } else if
		 * (role.equals("update")) { Utils.forward(req, resp,
		 * "boardView/updatePost.jsp"); } else if (role.equals("delete")) {
		 * Utils.forward(req, resp, "boardView/deletePost.jsp"); }
		 */

		// 값에따라 수행되는 것이 다르도록
		/*
		 * if (role.equals("detail")) { Utils.forward(req, resp,
		 * "boardView/postDetail.jsp"); } else if (role.equals("add")) {
		 * Utils.forward(req, resp, "boardView/addPostForm.jsp"); } else if
		 * (role.equals("update")) { Utils.forward(req, resp,
		 * "boardView/updatePost.jsp"); } else if (role.equals("delete")) {
		 * Utils.forward(req, resp, "boardView/deletePost.jsp"); }
		 */
	}
}
