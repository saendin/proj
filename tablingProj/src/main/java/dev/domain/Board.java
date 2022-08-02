package dev.domain;

public class Board {
	//-------------Board
	private int boardId;
	private String memberId;
	private String title;
	private String content;
	private String createDate;
	private int hits;
	
	//--------생성자
	public Board(){};
	
	public Board(int boardId, String memberId, String title, String content, String createDate, int hits) {
		super();
		this.boardId = boardId;
		this.memberId = memberId;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
		this.hits = hits;
	}
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	
	
}
