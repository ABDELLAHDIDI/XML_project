/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.apache.commons.io.FileUtils;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;



/**
 *
 * @author lenovo
 */
public class Data {
    public static final String xml_GINF2 = "./res/xml/ginf2.xml";
    public static final String xml_EMPLOITS = "./res/xml/emplois.xml";
    public static List<List> getallstudents() throws ParserConfigurationException, SAXException, IOException, XPathExpressionException{
        List<List> rows =new ArrayList<List>();
        DocumentBuilderFactory documentFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentFactory.newDocumentBuilder();
 
        Document document = documentBuilder.parse(xml_GINF2);
        XPath xPath = XPathFactory.newInstance().newXPath();
        String xPath_exp = "GINF2/etudiant/@code_apogée";
        NodeList List_code = (NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        xPath_exp = "GINF2/etudiant/Nom/text()";
        NodeList List_nom = (NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        
        xPath_exp = "GINF2/etudiant/Prénom/text()";
        NodeList List_prenom = (NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        
        
        for(int i=0;i<List_code.getLength();i++){
            
            
            List row = new ArrayList();
            row.add(List_code.item(i).getNodeValue());
            row.add(List_nom.item(i).getNodeValue());
            row.add(List_prenom.item(i).getNodeValue());
            rows.add(row);
            
        }
        
        return rows;
    }
    
    public static List<List> getallweeks() throws ParserConfigurationException, SAXException, IOException, XPathExpressionException{
        List<List> rows =new ArrayList<List>();
        DocumentBuilderFactory documentFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentFactory.newDocumentBuilder();
 
        Document document = documentBuilder.parse(xml_EMPLOITS);
        XPath xPath = XPathFactory.newInstance().newXPath();
        String xPath_exp = "Emlpoi/semaine/@num";
        NodeList List_num = (NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        xPath_exp = "Emlpoi/semaine/@annee";
        NodeList List_annee = (NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        
        
        
        for(int i=0;i<List_num.getLength();i++){
            
            
            List row = new ArrayList();
            row.add(List_num.item(i).getNodeValue());
            row.add(List_annee.item(i).getNodeValue());
            rows.add(row);
            
        }
        
        return rows;
    }
    
    public static List<List> getallmodules() throws ParserConfigurationException, SAXException, IOException, XPathExpressionException{
        List<List> rows =new ArrayList<List>();
        DocumentBuilderFactory documentFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentFactory.newDocumentBuilder();
 
        Document document = documentBuilder.parse(xml_GINF2);
        XPath xPath = XPathFactory.newInstance().newXPath();
        String xPath_exp ;
        
        xPath_exp = "GINF2/etudiant[1]/NOTES/note/@module_code";
        NodeList List_code = (NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        
        xPath_exp = "GINF2/etudiant[1]/NOTES/note/@module_name";
        NodeList List_nom = (NodeList) xPath.compile(xPath_exp).
                        evaluate(document, XPathConstants.NODESET);
        
        
        for(int i=0;i<List_code.getLength();i++){
            
            
            List row = new ArrayList();
            row.add(List_code.item(i).getNodeValue());
            row.add(List_nom.item(i).getNodeValue());
            rows.add(row);
            
        }
        
        return rows;
    }
    
}
