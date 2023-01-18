package com.multi.camp.manager;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

@Service
public class GoCampingServiceImpl implements GoCampingService{
	GoCampingDAO dao;
	List<GoCampingDTO> dtolist;
	
	@Autowired
	public GoCampingServiceImpl(GoCampingDAO dao) {
		super();
		this.dao = dao;
	}
	
	@Override
	public int insertGoCamping() {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder xmlparser;
		
		String gocampingurl ="http://apis.data.go.kr/B551011/GoCamping/basedList"; //End Point + API목록중하나
		String key="UBakkE%2FihnBG11v4sgIy99%2BDpgzf5M%2FgWkAx7%2FxJj0cW1Et4rkrddRT0Yrln%2FqWDJR4db9SSTo%2FHxnNRqeDkiQ%3D%3D"; //일반 인증키(Encoding)
		String numOfRows = "30" ;
		String PageNo = "2" ;
		String MobileOS = "WIN";
		String MobileApp = "testtest";
		String realUrl = gocampingurl+"?ServiceKey="+key+"&pageNo="+PageNo+"&MobileOS="+MobileOS+"&MobileApp="+MobileApp+"&numOfRows="+numOfRows;
		GoCampingDTO dto =null;
		try {
			URL url = new URL(realUrl);
			xmlparser = factory.newDocumentBuilder();
			BufferedInputStream bis = new BufferedInputStream(url.openStream());
			Document document = xmlparser.parse(bis);
			//Document document = xmlparser.parse(url.toString());
			Element root = document.getDocumentElement();
			NodeList itemlist = root.getElementsByTagName("item");
			System.out.println("데이터:"+itemlist.getLength());
			//공공데이터가 여러개 오니까 dto를 담을 리스트
			dtolist = new ArrayList<GoCampingDTO>(); 
			for (int i = 0; i < itemlist.getLength(); i++) {//<item>엘리먼트와 하위엘리먼트를 모두 추출
				Node itemnode = itemlist.item(i);
				System.out.println(itemnode.getNodeName());
				
				NodeList itemchildnodelist = itemnode.getChildNodes();
				System.out.println(itemchildnodelist.getLength());
				System.out.println("노드리스트자식길이:"+itemchildnodelist.getLength());
				dto = new GoCampingDTO();
				for (int j = 0; j < itemchildnodelist.getLength(); j++) {
				
					Node itemChildNode=itemchildnodelist.item(j);
					String nodename = itemChildNode.getNodeName();
	//			    System.out.print(nodename+":");
		//			System.out.println(itemChildNode.getTextContent()); 
//					System.out.println("=====변수할당 전까지 들어옴=======");
					
//					
					 if(!nodename.equals("#text")) {
//						 System.out.println("*************************");
						 if(nodename.equals("facltNm")) {
							 System.out.println("============================");
							 System.out.println("--facltNm Check--");
							 System.out.println(itemChildNode.getTextContent());
							 dto.setFacltNm(itemChildNode.getTextContent());
							 //System.out.println("dto에 "+dto.getFacltNm());
						 }
						 else if(nodename.equals("lineIntro")) {
							 dto.setLineIntro(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("intro")) {
							 dto.setIntro(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("bizrno")) {
							 dto.setBizrno(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("facltDivNm")) {
							 dto.setFacltDivNm(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("featureNm")) {
							 dto.setFeatureNm(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("induty")) {
							 dto.setInduty(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("lctCl")) {
							 dto.setLctCl(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("doNm")) {
							 dto.setDoNm(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("addr1")) {
							 dto.setAddr1(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("mapX")) {
							 dto.setMapX(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("mapY")) {
							 dto.setMapY(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("tel")) {
							 dto.setTel(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("homepage")) {
							 dto.setHomepage(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("operPdCl")) {
							 dto.setOperPdCl(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("operDeCl")) {
							 dto.setOperDeCl(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("sbrsCl")) {
							 dto.setSbrsCl(itemChildNode.getTextContent());
						 }
						 else if(nodename.equals("firstImageUrl")) {
							 dto.setFirstImageUrl(itemChildNode.getTextContent());
						 }
					  }
					}
			    
				dtolist.add(dto);
				System.out.println(dto+"====%%%%%%%%%%%===================================================================================");
				}
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("dtolist는=>"+dtolist);
		return dao.insertGoCamping(dtolist);
	}
	
}
