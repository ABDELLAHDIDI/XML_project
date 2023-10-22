/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.fop.apps.FOPException;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;
import org.apache.pdfbox.multipdf.PDFMergerUtility;
import org.xml.sax.SAXException;

/**
 *
 * @author lenovo
 */
public class generate_pdf {
    
    
    
    public static int transform(String xmlFilePath,String xslFilePath,String pdfFilePath){
        
        try{
            File xsltFile = new File(xslFilePath);
        // the XML file which provides the input
        StreamSource xmlSource = new StreamSource(new File(xmlFilePath));
        // create an instance of fop factory
        FopFactory fopFactory;
        fopFactory = FopFactory.newInstance(new File(".").toURI());
        // a user agent is needed for transformation
        FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
        // Setup output
        OutputStream out;
        out = new java.io.FileOutputStream(pdfFilePath);

        try {
            // Construct fop with desired output format
            Fop fop;
            fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);

            // Setup XSLT
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(new StreamSource(xsltFile));

            // Resulting SAX events (the generated FO) must be piped through to
            // FOP
            Result res = new SAXResult(fop.getDefaultHandler());

            // Start XSLT transformation and FOP processing
            // That's where the XML is first transformed to XSL-FO and then
            // PDF is created
            transformer.transform(xmlSource, res);
        } finally {
            out.close();
        }
            
            return 1;
        }catch(Exception e){
            return -1;
        }
        
    }
    
    public static void mergePDFs(File[] files, File outputFile)
            throws SAXException, FOPException, IOException {
        FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
        FOUserAgent foUserAgent = fopFactory.newFOUserAgent();

        try (FileOutputStream out = new FileOutputStream(outputFile)) {
            Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);
            PDFMergerUtility merger = new PDFMergerUtility();
            merger.setDestinationStream(out);

            for (File file : files) {
                merger.addSource(file);
            }
            merger.mergeDocuments(null);
        }
    }
    
}
