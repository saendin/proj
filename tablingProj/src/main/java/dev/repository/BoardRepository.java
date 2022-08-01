package dev.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dev.domain.Board;
import dev.domain.Member;

public class BoardRepository extends DAO{
	//커뮤니티 : 멤버롤이 2면 글 읽기 쓰기 가능
	
	protected ResultSet rs;
	
	//글등록
	public void insertPost(Board bd) {
		connect();
		String sql = "insert into boards values((select nvl(max(board_id),2022100)+1 from boards),"
				+ "(select m.nick_name from members m inner join boards b on m.member_id=b.member_id and b.member_id=?)"
				+ ", ?, ?, sysdate,0)";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, bd.getMemberId());// 아이디를 받아와서 그 아이디랑 멤버아이디랑 같은 아이디면 별명이 보여지도록
			ps.setString(2, bd.getTitle());
			ps.setString(3, bd.getContent());
			
			int result = ps.executeUpdate();
			
			if(result>0) {
				System.out.println(result + "건 등록 완료");
			} else {
				System.out.println("등록 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}
	//게시판 전체 목록
	public List<Board> boardList() {
		connect();
		String sql = "select * from boards";
		List<Board> list = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				Board board = new Board(rs.getInt("board_id"),
									 rs.getString("member_id"),
									 rs.getString("title"),
									 rs.getString("contetn"),
									 rs.getString("create_date"),
									 rs.getInt("hits"));
				list.add(board);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
	}
	//게시글 디테일
	public Board getPost(int boardId) {
		connect();
		String sql = "select from boards where board_id=?";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, boardId);
			rs = ps.executeQuery();
			
			if (rs.next()) {
				Board bd = new Board();
				bd.setBoardId(boardId);
				bd.setMemberId(rs.getString("member_id"));
				bd.setTitle(rs.getString("title"));
				bd.setContent(rs.getString("content"));
				bd.setCreateDate(rs.getString("create_date"));
				bd.setHits(rs.getInt("hits"));
				
				updateHits(boardId); //게시글 클릭->조회수++메소드 실행
				
				return bd;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		System.out.println("조회된 값이 없습니다");
		return null;
	}
	//조회수++
	private void updateHits(int boardId) {
		connect();
		String sql = "update boards set hits=hits+1 where board_id=?";
			try {
				ps = conn.prepareStatement(sql);
				ps.setInt(1, boardId);
				ps.executeQuery();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				disconnect();
			}
	}
	//게시글 제목, 내용 수정
	public void updatePost(Board bd) {
		connect();
		String sql = "update boards set title=?, content=? where board_id=?";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, bd.getTitle());
			ps.setString(2, bd.getContent());
			ps.setInt(3, bd.getBoardId());
			
			int result = ps.executeUpdate();
			
			if (result > 0) {
				System.out.println(result + "건 수정 완료");
			} else {
				System.out.println("수정 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} disconnect();
	}
	//게시글 삭제
	public void deletePost(Board bd) {
		connect();
		String sql = "delete from boards where board_id=?";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, bd.getBoardId());
			
			int result = ps.executeUpdate();
			if (result > 0) {
				System.out.println(result + "건 삭제 완료");
			} else {
				System.out.println("삭제 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}
	//로그인체크
	public Member loginCheck(String id, String pwd) {
		connect();
		String sql = "select * from members where member_id=? and password=?";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				Member member = new Member();
				member.setMemberId(rs.getString("member_id"));
				member.setMemberId(rs.getString("password"));
				member.setNickName(rs.getString("nick_name"));
				return member;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return null;
	}
}
	
