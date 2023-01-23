package com.multi.camp.servicecenter;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
@Service
public class ServiceFileUploadLogic {
	//파일을 업로드한 후 이 정보를 ServiceFileDTO로 변환해서 리턴
	public List<ServiceFileDTO> uploadFiles(List<MultipartFile> multipartFiles,String path) throws IllegalStateException, IOException{
		List<ServiceFileDTO> filedtolist = new ArrayList<ServiceFileDTO>();
		for(MultipartFile multipartFile : multipartFiles) {
			if(!multipartFile.isEmpty()) {
			//클라이언트가 업로드한 파일명
			String originalFilename = multipartFile.getOriginalFilename();
			//서버에서 식별할 수 있도록 파일명을 변경
			String storeFilename = createStoreFilename(originalFilename);
			System.out.println(originalFilename);
			//File객체를 실제 경로에 저장
			multipartFile.transferTo(new File(path+File.separator+storeFilename));
			filedtolist.add(new ServiceFileDTO(originalFilename, storeFilename));
			}
		}
		return filedtolist;
		
	}
	//클라이언트가 입력한 파일명을 중복없는 이름으로 변경
	//UUID - 32자리의 16진수로 표기
	private String createStoreFilename(String originalFilename) {
		int pos = originalFilename.lastIndexOf(".");
		String ext = originalFilename.substring(pos+1);
		String uuid = UUID.randomUUID().toString();
		return uuid+"."+ext;
	}
}
