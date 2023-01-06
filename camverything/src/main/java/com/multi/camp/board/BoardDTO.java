package com.multi.camp.board;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class BoardDTO {
	private int board_no;
	private String id;
	private String nickname;
	private String title;
	private String content;
	private Date create_date;
	private int view_cnt;
	private String category;
	private List<MultipartFile> files;
	public BoardDTO() {
		
	}

	public BoardDTO(int board_no, String id, String nickname, String title, String content, Date create_date,
			int view_cnt, String category, List<MultipartFile> files) {
		super();
		this.board_no = board_no;
		this.id = id;
		this.nickname = nickname;
		this.title = title;
		this.content = content;
		this.create_date = create_date;
		this.view_cnt = view_cnt;
		this.category = category;
		this.files = files;
	}

	@Override
	public String toString() {
		return "BoardDTO [board_no=" + board_no + ", id=" + id + ", nickname=" + nickname + ", title=" + title
				+ ", content=" + content + ", create_date=" + create_date + ", view_cnt=" + view_cnt + ", category="
				+ category + ", files=" + files + "]";
	}

	public String getCategory() {
		return category;
	}
	
	
	public void setCategory(String category) {
		this.category = category;
	}

	public List<MultipartFile> getFiles() {
		return files;
	}
	
	
	
	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}
	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public int getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}
	
}
