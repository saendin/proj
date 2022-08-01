package dev.service;

import java.util.List;

import dev.domain.Board;
import dev.repository.BoardRepository;

public class BoardService {
	 private static BoardService instance = new BoardService();
	 BoardRepository repo = new BoardRepository();
	 
	 private BoardService() {};
	 public static BoardService getInstance() {
		return instance;
	 }
	 
	 //게시글 등록
	 public void insertPost(Board bd) {
		 repo.insertPost(bd);
	 }
	 
	 //글목록
	 public List<Board> boardList(){
		 return repo.boardList();
	 }
	 
	 //게시글 디테일
	 public Board intoPost(int boardId) {
		return repo.getPost(boardId);
	 }
	 
	 //게시글 수정
	 public void updatePost(Board bd) {
		 repo.updatePost(bd);
	 }
	 
	 //게시글 삭제
	 public void deletePost(Board bd) {
		 repo.deletePost(bd);
	 }
}
