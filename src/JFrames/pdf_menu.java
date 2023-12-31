/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package JFrames;

import static JFrames.schedule_menu.pdf_emploi_path;
import static JFrames.schedule_menu.xml_emploi_path;
import static JFrames.schedule_menu.xml_emplois_path;
import static JFrames.schedule_menu.xsd_emplois_path;
import static JFrames.schedule_menu.xsl_emploi_path;
import classes.Data;
import classes.extract_xml;
import classes.generate_pdf;
import classes.qrcode;
import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathExpressionException;
import org.apache.commons.io.FileUtils;
import org.xml.sax.SAXException;

/**
 *
 * @author lenovo
 */
public class pdf_menu extends javax.swing.JFrame {

    public static String xml_ginf2_path="./res/xml/GINF2.xml";
    public static String xml_etudiant_path="./res/xml/etudiant.xml";
    public static String xsl_carte_path="./res/xsl/xsl-fo/carte.xsl";
    public static String pdf_carte_path="./res/pdf/carte.pdf";
    public static String xsl_transcript_path="./res/xsl/xsl-fo/transcript.xsl";
    public static String pdf_transcript_path="./res/pdf/transcript.pdf";
    public static String xsl_certificate_path="./res/xsl/xsl-fo/certificate.xsl";
    public static String pdf_certificate_path="./res/pdf/certificate.pdf";
    public static String qr_path="./res/images/icone/qr.png";
    public static String photos_dir="./res/images/photo";
    
    private final JFileChooser filechooser=new JFileChooser();
    
    public pdf_menu() {
        initComponents();
        this.setLocationRelativeTo(null);
        try{
            load(Data.getallstudents(),"");
        }catch(Exception e){
            System.out.println("erreur de chargement de donnees");
        }
        
        
        
    }

    
    
    
    public void load(List<List> L,String search) throws ParserConfigurationException, SAXException, IOException, XPathExpressionException{
        DefaultTableModel model= (DefaultTableModel)jTable1.getModel();
        while(model.getRowCount()!=0){
            model.removeRow(0);
        }
        
        for(int i=0 ; i < L.size() ;i++){
            String code=L.get(i).get(0).toString();
            String nom=L.get(i).get(1).toString();
            String prenom=L.get(i).get(2).toString();
            if(code.toLowerCase().contains(search.toLowerCase()) || nom.toLowerCase().contains(search.toLowerCase()) || prenom.toLowerCase().contains(search.toLowerCase())){
                Object[] o = new Object[]{code,nom,prenom};
                model.insertRow(model.getRowCount(), o);  
            }
            
        }
        
        
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        home = new javax.swing.JButton();
        charge = new javax.swing.JButton();
        all_certificates = new javax.swing.JButton();
        certificates = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTextArea2 = new javax.swing.JTextArea();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        card = new javax.swing.JButton();
        all_card = new javax.swing.JButton();
        all_transcript = new javax.swing.JButton();
        transcript = new javax.swing.JButton();
        input = new javax.swing.JTextField();
        search = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(850, 500));
        setResizable(false);

        jPanel1.setBackground(new java.awt.Color(44, 62, 80));
        jPanel1.setPreferredSize(new java.awt.Dimension(850, 500));

        jPanel2.setBackground(new java.awt.Color(248, 148, 6));

        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/JFrames/Image1.png"))); // NOI18N

        jLabel2.setFont(new java.awt.Font("Segoe UI Black", 1, 36)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 0, 0));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("<html>  <center> <div>XML PROJECT</div> <div>SCHEDULE MENU</div> </center> </html>");

        home.setBackground(new java.awt.Color(105, 63, 1));
        home.setForeground(new java.awt.Color(248, 148, 6));
        home.setIcon(new javax.swing.ImageIcon(getClass().getResource("/JFrames/Image2.png"))); // NOI18N
        home.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                homeActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(home, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(30, 30, 30))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(home, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(7, Short.MAX_VALUE))
        );

        charge.setFont(new java.awt.Font("Tempus Sans ITC", 1, 36)); // NOI18N
        charge.setText("Charge photos");
        charge.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                chargeActionPerformed(evt);
            }
        });

        all_certificates.setFont(new java.awt.Font("Tempus Sans ITC", 1, 24)); // NOI18N
        all_certificates.setText("all certificates");
        all_certificates.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                all_certificatesActionPerformed(evt);
            }
        });

        certificates.setFont(new java.awt.Font("Tempus Sans ITC", 1, 24)); // NOI18N
        certificates.setText("certificate");
        certificates.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                certificatesActionPerformed(evt);
            }
        });

        jTextArea2.setColumns(20);
        jTextArea2.setRows(5);
        jTextArea2.setText("1- Charger le dossier des photos des etudiants (code_apogée.png) \n(si non photo par defaut).\n2- sélectionner le type de fichier voulu.\n3- all pour generer une seul fois pour tout la classe.\n- vous pouvez chercher un etudiant par son code, son nom ou son prenom.");
        jTextArea2.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        jTextArea2.setEnabled(false);
        jScrollPane2.setViewportView(jTextArea2);

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Code", "Nom", "Prenom"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(jTable1);
        if (jTable1.getColumnModel().getColumnCount() > 0) {
            jTable1.getColumnModel().getColumn(0).setResizable(false);
            jTable1.getColumnModel().getColumn(1).setResizable(false);
            jTable1.getColumnModel().getColumn(2).setResizable(false);
        }

        card.setFont(new java.awt.Font("Tempus Sans ITC", 1, 24)); // NOI18N
        card.setText("student card");
        card.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cardActionPerformed(evt);
            }
        });

        all_card.setFont(new java.awt.Font("Tempus Sans ITC", 1, 24)); // NOI18N
        all_card.setText("all student card");
        all_card.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                all_cardActionPerformed(evt);
            }
        });

        all_transcript.setFont(new java.awt.Font("Tempus Sans ITC", 1, 24)); // NOI18N
        all_transcript.setText("all transcripts");
        all_transcript.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                all_transcriptActionPerformed(evt);
            }
        });

        transcript.setFont(new java.awt.Font("Tempus Sans ITC", 1, 24)); // NOI18N
        transcript.setText("transcript");
        transcript.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                transcriptActionPerformed(evt);
            }
        });

        input.setToolTipText("rechercher par le code, le nom ou le prenom");

        search.setText("search");
        search.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                searchActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(input, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(search, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 300, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(42, 42, 42)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(charge, javax.swing.GroupLayout.PREFERRED_SIZE, 446, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 446, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(certificates, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(transcript, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(card, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(46, 46, 46)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(all_card, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(all_transcript, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(all_certificates, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addGap(30, 30, 30))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(20, 20, 20)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 205, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(input, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(search)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(charge)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(card)
                            .addComponent(all_card))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(transcript, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(all_transcript))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(certificates)
                            .addComponent(all_certificates, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(28, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 852, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 450, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void homeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_homeActionPerformed
        principale_menu pm = new principale_menu();
        pm.setVisible(true);
        pm.setLocationRelativeTo(null);
        pm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.dispose();
    }//GEN-LAST:event_homeActionPerformed

    private void chargeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_chargeActionPerformed
        filechooser.setApproveButtonText("choose");
        filechooser.removeChoosableFileFilter(filechooser.getFileFilter());
        filechooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        filechooser.setAcceptAllFileFilterUsed(false);
        int returnval =filechooser.showOpenDialog(this);
        if(returnval==JFileChooser.APPROVE_OPTION){
            try {
                List<List> L=Data.getallstudents();

                for(int i=0 ; i < L.size() ;i++){
                    String code=L.get(i).get(0).toString();
                    File f=new File(filechooser.getSelectedFile() + "\\"+code+".png");
                    if(f.exists()){
                        FileUtils.copyFile(f, new File(photos_dir + "/"+code+".png"));
                    }
                } 
                
                JOptionPane.showMessageDialog(this, "Done");
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(this, "input error");
            }
        }
    }//GEN-LAST:event_chargeActionPerformed

    private void all_certificatesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_all_certificatesActionPerformed
        filechooser.setApproveButtonText("save");
        filechooser.removeChoosableFileFilter(filechooser.getFileFilter());
        filechooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        filechooser.setAcceptAllFileFilterUsed(false);
        int returnval =filechooser.showOpenDialog(this);
        if(returnval==JFileChooser.APPROVE_OPTION){
            try {
                List<List> L=Data.getallstudents();
                JOptionPane.showMessageDialog(this, "la generation vas prendre un certain temps, clickez ok et patientez un peu ");

                for(int i=0 ; i < L.size() ;i++){
                    String code=L.get(i).get(0).toString();
                    extract_xml.extract_student(xml_ginf2_path, xml_etudiant_path, code);
                    String path=filechooser.getSelectedFile()+"\\certificate_"+code+".pdf";
                    generate_pdf.transform(xml_etudiant_path, xsl_certificate_path, path);
                } 
                
                JOptionPane.showMessageDialog(this, "Done");
                
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(this, "input error");
            }
        }
    }//GEN-LAST:event_all_certificatesActionPerformed

    private void all_cardActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_all_cardActionPerformed
        filechooser.setApproveButtonText("save");
        filechooser.removeChoosableFileFilter(filechooser.getFileFilter());
        filechooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        filechooser.setAcceptAllFileFilterUsed(false);
        int returnval =filechooser.showOpenDialog(this);
        if(returnval==JFileChooser.APPROVE_OPTION){
            try {
                List<List> L=Data.getallstudents();
                JOptionPane.showMessageDialog(this, "la generation vas prendre un certain temps, clickez ok et patientez un peu ");

                for(int i=0 ; i < L.size() ;i++){
                    String code=L.get(i).get(0).toString();
                    extract_xml.extract_student(xml_ginf2_path, xml_etudiant_path, code);
                    qrcode.generate(code, 300, 300, qr_path);
                    String path=filechooser.getSelectedFile()+"\\card_"+code+".pdf";
                    generate_pdf.transform(xml_etudiant_path, xsl_carte_path, path);
                } 
                
                JOptionPane.showMessageDialog(this, "Done");
                
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(this, "input error");
            }
        }
    }//GEN-LAST:event_all_cardActionPerformed

    private void all_transcriptActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_all_transcriptActionPerformed
        filechooser.setApproveButtonText("save");
        filechooser.removeChoosableFileFilter(filechooser.getFileFilter());
        filechooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        filechooser.setAcceptAllFileFilterUsed(false);
        int returnval =filechooser.showOpenDialog(this);
        if(returnval==JFileChooser.APPROVE_OPTION){
            try {
                List<List> L=Data.getallstudents();
                JOptionPane.showMessageDialog(this, "la generation vas prendre un certain temps, clickez ok et patientez un peu ");

                for(int i=0 ; i < L.size() ;i++){
                    String code=L.get(i).get(0).toString();
                    extract_xml.extract_student(xml_ginf2_path, xml_etudiant_path, code);
                    String path=filechooser.getSelectedFile()+"\\transcript_"+code+".pdf";
                    generate_pdf.transform(xml_etudiant_path, xsl_transcript_path, path);
                } 
                
                JOptionPane.showMessageDialog(this, "Done");
                
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(this, "input error");
            }
        }
    }//GEN-LAST:event_all_transcriptActionPerformed

    private void searchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_searchActionPerformed
        try{
            load(Data.getallstudents(),input.getText());
        }catch(Exception e){
            System.out.println("erreur de chargement de donnees");
        }
    }//GEN-LAST:event_searchActionPerformed

    private void cardActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cardActionPerformed
        if(jTable1.getSelectedRow()==-1){
            JOptionPane.showMessageDialog(this, "no row selected");
        }else{
            String code=jTable1.getModel().getValueAt(jTable1.getSelectedRow(), 0).toString();
            extract_xml.extract_student(xml_ginf2_path, xml_etudiant_path, code);
            qrcode.generate(code, 300, 300, qr_path);
            generate_pdf.transform(xml_etudiant_path, xsl_carte_path, pdf_carte_path);
            
            try {
                Desktop.getDesktop().open(new File(pdf_carte_path));
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(this, "input error");
            }
        }
    }//GEN-LAST:event_cardActionPerformed

    private void transcriptActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_transcriptActionPerformed
        if(jTable1.getSelectedRow()==-1){
            JOptionPane.showMessageDialog(this, "no row selected");
        }else{
            String code=jTable1.getModel().getValueAt(jTable1.getSelectedRow(), 0).toString();
            extract_xml.extract_student(xml_ginf2_path, xml_etudiant_path, code);
            generate_pdf.transform(xml_etudiant_path, xsl_transcript_path, pdf_transcript_path);
            
            try {
                Desktop.getDesktop().open(new File(pdf_transcript_path));
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(this, "input error");
            }
        }
    }//GEN-LAST:event_transcriptActionPerformed

    private void certificatesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_certificatesActionPerformed
        
        if(jTable1.getSelectedRow()==-1){
            JOptionPane.showMessageDialog(this, "no row selected");
        }else{
            String code=jTable1.getModel().getValueAt(jTable1.getSelectedRow(), 0).toString();
            extract_xml.extract_student(xml_ginf2_path, xml_etudiant_path, code);
            generate_pdf.transform(xml_etudiant_path, xsl_certificate_path, pdf_certificate_path);
            
            try {
                Desktop.getDesktop().open(new File(pdf_certificate_path));
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(this, "input error");
            }
        }
    }//GEN-LAST:event_certificatesActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(pdf_menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(pdf_menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(pdf_menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(pdf_menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new pdf_menu().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton all_card;
    private javax.swing.JButton all_certificates;
    private javax.swing.JButton all_transcript;
    private javax.swing.JButton card;
    private javax.swing.JButton certificates;
    private javax.swing.JButton charge;
    private javax.swing.JButton home;
    private javax.swing.JTextField input;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextArea jTextArea2;
    private javax.swing.JButton search;
    private javax.swing.JButton transcript;
    // End of variables declaration//GEN-END:variables
}
