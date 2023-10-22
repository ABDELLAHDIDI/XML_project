/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

/**
 *
 * @author lenovo
 */
public class xlsx_to_xml {
    public static final String xsdFilePath = "./res/xml/GINF2.xsd";
    public static int transform(String xlsxFilePath,String xmlFilePath){
        try{
            File exel =new File(xlsxFilePath);
        FileInputStream FIS =new FileInputStream(exel);
        
        //xlsx read
        XSSFWorkbook wb = new XSSFWorkbook(FIS);
        XSSFSheet sheet = wb.getSheetAt(0);
        
        //get row(0)
        Row row =sheet.getRow(0);
       
        
        //XML
        DocumentBuilderFactory documentFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentFactory.newDocumentBuilder();
 
        Document document = documentBuilder.newDocument();
 
            // root element
            Element root = document.createElement("GINF2");
            document.appendChild(root);
            
            Attr attr1 = document.createAttribute("xmlns:xsi");
            attr1.setValue("http://www.w3.org/2001/XMLSchema-instance");
            root.setAttributeNode(attr1);
            
            Attr attr2 = document.createAttribute("xsi:noNamespaceSchemaLocation");
            attr2.setValue("GINF2.xsd");
            root.setAttributeNode(attr2);
            
            
            // etudiant element
            Element etudiant_TM = document.createElement("etudiant");
            int nbr=0;
            int c=0;
            List<String> list_attr=new ArrayList<String>();
            for(Cell cell : row){
                String elm_name=cell.getStringCellValue();
                if(elm_name!=""){
                    
                    nbr++;
                    if(c<3){
                        c++;
                        etudiant_TM.setAttributeNode(document.createAttribute(elm_name));
                        list_attr.add(elm_name);
                    }else{
                        etudiant_TM.appendChild(document.createElement(elm_name));
                    }
                }
            }
            
            Element date = (Element) etudiant_TM.getLastChild().getPreviousSibling();
            date.appendChild(document.createElement("day"));
            date.appendChild(document.createElement("month"));
            date.appendChild(document.createElement("year"));
            
            Row row1 =sheet.getRow(1);
            Row row2 =sheet.getRow(2);
            Row row3 =sheet.getRow(3);
            Row row4 =sheet.getRow(4);
            for(int i=nbr-1;i<row.getLastCellNum();i++){
                Cell cell1 = row1.getCell(i);
                Cell cell2 = row2.getCell(i);
                Cell cell3 = row3.getCell(i);
                Cell cell4 = row4.getCell(i);
                String val1=cell1.getStringCellValue();
                String val2=cell2.getStringCellValue();
                String val3=cell3.getStringCellValue();
                String val4=Integer.toString((int)cell4.getNumericCellValue());
                if(val1!=""){
                    Element note= document.createElement("note");
                    etudiant_TM.getLastChild().appendChild(note);
                    Attr attr = document.createAttribute("module_code");
                    attr.setValue(val1);
                    note.setAttributeNode(attr);
                    attr = document.createAttribute("module_name");
                    attr.setValue(val2);
                    note.setAttributeNode(attr);
                    
                }
                Element note_elm= document.createElement("note_elm");
                etudiant_TM.getLastChild().getLastChild().appendChild(note_elm);
                Attr attr = document.createAttribute("elm_name");
                attr.setValue(val3);
                note_elm.setAttributeNode(attr);
                attr = document.createAttribute("poid");
                attr.setValue(val4);
                note_elm.setAttributeNode(attr);
                
                
                
            }
            
            
            
            Element elm;
            Attr attr;
            String val;
            Element etudiant;
            for(int i=5; i<=sheet.getLastRowNum();i++){
                etudiant=(Element) etudiant_TM.cloneNode(true);
                root.appendChild(etudiant);
                row=sheet.getRow(i);
                
                //for attr
                val=Integer.toString((int)row.getCell(0).getNumericCellValue());
                etudiant.setAttribute(list_attr.get(0), val);
                for(int j=1;j<3;j++){
                    val=row.getCell(j).getStringCellValue();
                    etudiant.setAttribute(list_attr.get(j), val);
                }
                
                
                
                
                
                //for element
                val=row.getCell(3).getStringCellValue();
                elm = (Element) etudiant.getFirstChild();
                elm.appendChild(document.createTextNode(val));
                
                for(int j=4;j<nbr-2;j++){
                    
                    val=row.getCell(j).getStringCellValue();
                    elm = (Element) elm.getNextSibling();
                    elm.appendChild(document.createTextNode(val));
                    
                }
                
              
                int d =row.getCell(nbr-2).getDateCellValue().getDate();
                int m =row.getCell(nbr-2).getDateCellValue().getMonth()+1;
                int y =row.getCell(nbr-2).getDateCellValue().getYear()+1900;
                elm = (Element) elm.getNextSibling();
                elm = (Element) elm.getFirstChild();
                elm.appendChild(document.createTextNode(Integer.toString(d)));
                elm = (Element) elm.getNextSibling();
                elm.appendChild(document.createTextNode(Integer.toString(m)));
                elm = (Element) elm.getNextSibling();
                elm.appendChild(document.createTextNode(Integer.toString(y)));
                
                Element notes = (Element) etudiant.getLastChild();
                Element note = (Element) notes.getFirstChild();
                Element note_elm = (Element) note.getFirstChild();
                for(int j=nbr-1;j<row.getLastCellNum();j++){
                    
                    val=row.getCell(j).getNumericCellValue()+"";
                    note_elm.appendChild(document.createTextNode(val));
                    note_elm=(Element) note_elm.getNextSibling();
                    if(note_elm==null){
                        note=(Element) note.getNextSibling();
                        if(note!=null)
                        note_elm = (Element) note.getFirstChild();
                    }
                    
                    
                }
                
                
            }
            
            
            // create the xml file
            //transform the DOM Object to an XML File
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource domSource = new DOMSource(document);
            StreamResult streamResult = new StreamResult(new File(xmlFilePath));
            
            transformer.transform(domSource, streamResult);
 
            System.out.println("Done creating XML File");
            
            if(validateXMLSchema(xsdFilePath, xmlFilePath)){
                return 1;
            }
            return 0;
            
        }catch(Exception e){
            return -1;
        }
    }
    
    public static boolean validateXMLSchema(String xsdPath, String xmlPath){
        
        try {
            SchemaFactory factory = 
                    SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
            Schema schema = factory.newSchema(new File(xsdPath));
            Validator validator = schema.newValidator();
            validator.validate(new StreamSource(new File(xmlPath)));
        } catch (IOException | SAXException e) {
            System.out.println("Exception: "+e.getMessage());
            return false;
        }
        return true;
    }
    
    
}
