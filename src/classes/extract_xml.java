/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

import java.io.File;
import java.util.Scanner;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


public class extract_xml {
    public static int extract_student(String xmlFilePath, String student_xmlFilePath, String code){
        try{
            //XML
        DocumentBuilderFactory documentFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentFactory.newDocumentBuilder();
 
        Document document = documentBuilder.parse(xmlFilePath);
        Document newdocument = documentBuilder.newDocument();
        
        XPath xPath = XPathFactory.newInstance().newXPath();
        String xPath_exp = "GINF2/etudiant[@code_apogée="+code+"]";
        
        NodeList resNodeList = (NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        
        if(resNodeList.getLength()==0){
            System.out.println("code appogee eronee");
            throw new Exception();
        }
        
        Element root= (Element) newdocument.adoptNode(resNodeList.item(0));
        newdocument.appendChild(root);
        
        
            //transform the DOM Object to an XML File
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource domSource = new DOMSource(newdocument);
            StreamResult streamResult = new StreamResult(new File(student_xmlFilePath));
 
           
 
            transformer.transform(domSource, streamResult);
 
            System.out.println("Done creating XML File");
            
            return 1;
        }catch(Exception e){
            return -1;
        }
    }
    
    public static int extract_week(String xmlFilePath, String week_xmlFilePath, String annee ,String num){
        try{
            //XML
        DocumentBuilderFactory documentFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentFactory.newDocumentBuilder();
 
        Document document = documentBuilder.parse(xmlFilePath);
        Document newdocument = documentBuilder.newDocument();
        
        XPath xPath = XPathFactory.newInstance().newXPath();
        String xPath_exp = "Emlpoi/semaine[@num="+num+" and @annee="+annee+" ]";
        
        NodeList resNodeList = (NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        
        if(resNodeList.getLength()==0){
            System.out.println("input error");
            throw new Exception();
        }
        
        Element root= (Element) newdocument.adoptNode(resNodeList.item(0));
        newdocument.appendChild(root);
        
        
            //transform the DOM Object to an XML File
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource domSource = new DOMSource(newdocument);
            StreamResult streamResult = new StreamResult(new File(week_xmlFilePath));
 
           
 
            transformer.transform(domSource, streamResult);
 
            System.out.println("Done creating XML File");
            
            return 1;
        }catch(Exception e){
            return -1;
        }
    }
    
    public static int extract_module(String xmlFilePath, String module_xmlFilePath, String code){
        try{
        DocumentBuilderFactory documentFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentFactory.newDocumentBuilder();
 
        Document document = documentBuilder.parse(xmlFilePath);
        Document newdocument = documentBuilder.newDocument();
        
       
        
        XPath xPath = XPathFactory.newInstance().newXPath();
        String xPath_exp = "GINF2/etudiant/NOTES/note[@module_code='";
        
        
        xPath_exp=xPath_exp+code+"']";
        
        NodeList notes = (NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        
        xPath_exp="GINF2/etudiant";
        NodeList etudiants=(NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        
        xPath_exp="GINF2/etudiant/NOTES";
        NodeList NOTES_els=(NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        
        if(notes.getLength()==0){
            System.out.println("code module eronee");
            System.exit(0);
        }
        
        Element root = newdocument.createElement("module");
        root.setAttribute("code", code);
        newdocument.appendChild(root);
        Node note;
        Node etudiant;
        Node NOTES_el;
        
        for(int i=0;i<notes.getLength();i++){
            etudiant=newdocument.adoptNode(etudiants.item(i));
            note=newdocument.adoptNode(notes.item(i));
            NOTES_el=newdocument.adoptNode(NOTES_els.item(i));
 
            etudiant.appendChild(note);
            root.appendChild(etudiant);
            
        }
 
        
        // create the xml file
            //transform the DOM Object to an XML File
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource domSource = new DOMSource(newdocument);
            StreamResult streamResult = new StreamResult(new File(module_xmlFilePath));
 
           
 
            transformer.transform(domSource, streamResult);
 
            System.out.println("Done creating XML File");
            return 1;
        }catch(Exception e){
            return -1;
        }
    }
}
