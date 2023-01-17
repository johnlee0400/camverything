package com.multi.camp;

import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class PharcyInfoDomParser {
	public static void main(String[] args) {
		//1. parser객체를 생성해주는 factory객체를 생성
				DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
				try {
				//2. xml문서를 파싱할 수 있는 dom parser객체를 생성
				DocumentBuilder xmlparser = factory.newDocumentBuilder();
			
				//3.xml문서를 파싱해서 자바에서 사용할 수 있는 객체로 변환
				Document document = xmlparser.parse("src/main/java/xml/pharmacyinfo.xml");
				//root엘리먼트 구하기
				Element root = document.getDocumentElement();
				
				//특정 엘리먼트명을 지정해서 노드 추출
				NodeList itemlist = root.getElementsByTagName("item");
				System.out.println("아이템노드리스트갯수=>"+itemlist.getLength()+"\n");
				for(int i = 0; i<itemlist.getLength();i++) {
					//Nodelist에서 하나의 Node를 추출
					Node itemnode=itemlist.item(i);
					//dept노드의 하위 노드를 추출
					NodeList itemchildnodelist = itemnode.getChildNodes();
					System.out.println("item의 하위 노드 갯수=>"+itemchildnodelist.getLength());
					for (int j = 0; j < itemchildnodelist.getLength(); j++) {
						Node itemChildNode=itemchildnodelist.item(j);
						String nodename = itemChildNode.getNodeName();
						if(!nodename.equals("#text")) {
							System.out.print(nodename+":");
							System.out.println(itemChildNode.getTextContent());
						}
					}
					System.out.println();
				}
				
				
				} catch (SAXException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ParserConfigurationException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
	}

