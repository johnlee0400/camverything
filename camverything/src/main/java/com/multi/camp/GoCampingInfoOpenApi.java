package com.multi.camp;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class GoCampingInfoOpenApi {
	public static void main(String[] args) {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder xmlparser;
		
		String gocampingurl ="http://apis.data.go.kr/B551011/GoCamping/basedList"; //End Point + API목록중하나
		String key="UBakkE%2FihnBG11v4sgIy99%2BDpgzf5M%2FgWkAx7%2FxJj0cW1Et4rkrddRT0Yrln%2FqWDJR4db9SSTo%2FHxnNRqeDkiQ%3D%3D"; //일반 인증키(Encoding)
		String numOfRows = "5" ;
		String PageNo = "1" ;
		String MobileOS = "WIN";
		String MobileApp = "testtest";
		String realUrl = gocampingurl+"?ServiceKey="+key+"&pageNo="+PageNo+"&MobileOS="+MobileOS+"&MobileApp="+MobileApp+"&numOfRows="+numOfRows;
		
		try {
			URL url = new URL(realUrl);
			xmlparser = factory.newDocumentBuilder();
			BufferedInputStream bis = new BufferedInputStream(url.openStream());
			Document document = xmlparser.parse(bis);
			//Document document = xmlparser.parse(url.toString());
			Element root = document.getDocumentElement();
			NodeList itemlist = root.getElementsByTagName("item");
			System.out.println("데이터:"+itemlist.getLength());
			for (int i = 0; i < itemlist.getLength(); i++) {//<item>엘리먼트와 하위엘리먼트를 모두 추출
				Node itemnode = itemlist.item(i);
				NodeList itemchildnodelist = itemnode.getChildNodes();
				for (int j = 0; j < itemchildnodelist.getLength(); j++) {
					Node itemChildNode=itemchildnodelist.item(j);
					System.out.print(itemChildNode.getNodeName()+":");
					System.out.println(itemChildNode.getTextContent());
					}
				System.out.println("=============================================");
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
	}

}
