package com.multi.camp.board;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

import com.multi.camp.member.MemberDTO;

@Controller
public class BoardController {
	FileUploadLogic fileuploadService;
	BoardService service;
	public BoardController() {}
	@Autowired
	public BoardController(BoardService service, FileUploadLogic fileuploadService) {
		super();
		this.service = service;
		this.fileuploadService = fileuploadService;
	}
	
	@RequestMapping(value = "/board/write.do",method = RequestMethod.GET)
	public String writePage() {
		return "board/writepage";
	}
	@RequestMapping("/board/download/{id}/{board_no}/{boardFileno}")
	public ResponseEntity<UrlResource> downloadFile(@PathVariable String id,@PathVariable String board_no,@PathVariable String boardFileno,
														HttpSession session) throws MalformedURLException, FileNotFoundException, UnsupportedEncodingException {
		BoardFileDTO selectFileInfo = service.getFile(new BoardFileDTO(board_no, "", "", boardFileno));
		
		UrlResource resource = new UrlResource("file:"+WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload/"+selectFileInfo.getStoreFilename()));
		String encodedFilename = UriUtils.encode(selectFileInfo.getOriginalFilename(), "UTF-8");
		String mycontenttype = "attachment; filename=\""+ encodedFilename+"\"";
		return ResponseEntity.ok().header(HttpHeaders.CONTENT_DISPOSITION, mycontenttype)
				.body(resource);
				
		
		
	}
	@RequestMapping(value = "/board/write.do",method = RequestMethod.POST)
	public String write(BoardDTO board,HttpSession session) throws IllegalStateException, IOException {
		System.out.println("board=>"+board);
		List<MultipartFile> files = board.getFiles();
		String path = 
				WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");

		List<BoardFileDTO> boardfiledtolist = fileuploadService.uploadFiles(files, path);
		int count = 1;
		for(BoardFileDTO boardfiledto : boardfiledtolist) {
			boardfiledto.setBoardFileno(count+"");
			count++;
		} 
		service.insert(board,boardfiledtolist);
		return "redirect:/board/list.do?category=all";
	}
	@RequestMapping("/board/list.do")
	public ModelAndView list(String category) {
		ModelAndView mav = new ModelAndView("board/list");
		List<BoardDTO> boardlist = service.findByCategory(category);
		mav.addObject("category", category); 
		mav.addObject("boardlist", boardlist);
		return mav;
	}
	@RequestMapping("/board/read.do")
	public String read(String board_no,String state,Model model) {
		BoardDTO board = service.getBoardInfo(board_no);
		List<BoardFileDTO> boardfiledtolist = service.getFileList(board_no);
		String view = "";
		if(state.equals("READ")) {
			view = "board/read";
		}else {
			view = "board/update";
		}
		model.addAttribute("board", board);
		model.addAttribute("boardfiledtolist",boardfiledtolist);
		return view;
	}
	@RequestMapping("/board/delete.do")
	public String delete(String board_no , HttpSession session) {
		MemberDTO user = (MemberDTO) session.getAttribute("user");
		String view = "";
		if(user==null) {
			view = "redirect:/main/login.do";
		}else {
			int result = service.delete(board_no);
			view = "redirect:/board/list.do?category=all";
		}
		
		return view;
	}
	@RequestMapping("/board/update.do")
	public String update(BoardDTO board) {
		int result = service.update(board);
		return "redirect:/board/list.do?category=all";
	}
	@RequestMapping("/board/search.do")
	public ModelAndView search(String tag,String data) {
		ModelAndView mav = new ModelAndView("board/list");
		List<BoardDTO> boardlist = service.search(tag, data);
		mav.addObject("boardlist", boardlist);
		return mav;
	}
	
	@RequestMapping(value = "/board/ajax/list.do",produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<BoardDTO> ajaxlist(String category) {
		List<BoardDTO> boardlist = service.findByCategory(category);
		return boardlist;
	}
	
}













