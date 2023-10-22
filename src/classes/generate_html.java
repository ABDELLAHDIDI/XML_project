/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

import java.io.File;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 *
 * @author lenovo
 */
public class generate_html {
    
    public static int transform(String xmlFilePath,String xslFilePath,String htmlFilePath){
        try {
            TransformerFactory tff;
            tff = TransformerFactory.newInstance();
            Transformer tf= tff.newTransformer(new StreamSource (xslFilePath));
            StreamSource xml= new StreamSource (xmlFilePath)   ;
            StreamResult html= new StreamResult (new File(htmlFilePath) );
            tf.transform(xml, html);
            
            
            return 1;
        } catch (Exception e) {
            System.out.println("erreur");
            return -1;
        }
    }
    
}
