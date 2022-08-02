package dev.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.Utils;
import dev.domain.Board;
import dev.domain.Criteria;
import dev.domain.Page;
import dev.service.BoardService;

public class PostListPagingController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		//---------pageNum,postNum 속성 받아오기
		String pageNum = req.getParameter("pageNum");
		String postNum = req.getParameter("postNum");
		
		//---------criteria객체에 pageNum,postNum 속성 담기
		Criteria criteria = new Criteria();
		criteria.setPageNum(Integer.parseInt(pageNum));
		criteria.setPostNum(Integer.parseInt(postNum));
		
		//---------PageList서비스 호출
		BoardService bdService = BoardService.getBoardService();
		List<Board> pageList = bdService.getPaging(criteria);
		req.setAttribute("boardList", pageList);
		
		//---------글 목록 전체
		List<Board> boardTotalList = bdService.boardList();
		int total = boardTotalList.size();
		req.setAttribute("pageInfo", new Page(criteria, total));
		
		//---------boardList전송
		Utils.forward(req, resp, "boardView/postList.jsp");
	}
}
