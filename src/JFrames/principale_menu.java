/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package JFrames;

import static JFrames.schedule_menu.xml_emplois_path;
import static JFrames.schedule_menu.xsd_emplois_path;
import classes.xlsx_to_xml;
import java.io.File;
import java.io.IOException;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import org.apache.commons.io.FileUtils;



public class principale_menu extends javax.swing.JFrame {

    public static String xml_ginf2_path="./res/xml/ginf2.xml";
    public static String xsd_ginf2_path="./res/xml/ginf2.xsd";
    public static String xlsx_ginf2_path="./res/xlsx/ginf2.xlsx";
    
    private final JFileChooser filechooser=new JFileChooser();
    
    public principale_menu() {
        initComponents();
        this.setLocationRelativeTo(null);
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
        charge = new javax.swing.JButton();
        pdf = new javax.swing.JButton();
        html = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTextArea2 = new javax.swing.JTextArea();
        xlsx_data = new javax.swing.JButton();
        xml_data = new javax.swing.JButton();
        schedule = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        jPanel1.setBackground(new java.awt.Color(44, 62, 80));

        jPanel2.setBackground(new java.awt.Color(248, 148, 6));

        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/JFrames/Image1.png"))); // NOI18N

        jLabel2.setFont(new java.awt.Font("Segoe UI Black", 1, 36)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 0, 0));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("<html>\n <center>\n<div>XML PROJECT</div>\n<div>PRINCIPAL MENU</div>\n</center>\n</html>");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel2)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(10, Short.MAX_VALUE))
        );

        charge.setFont(new java.awt.Font("Tempus Sans ITC", 1, 36)); // NOI18N
        charge.setText("Charge Data(xlsx)");
        charge.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                chargeActionPerformed(evt);
            }
        });

        pdf.setFont(new java.awt.Font("Tempus Sans ITC", 1, 36)); // NOI18N
        pdf.setText("PDF");
        pdf.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                pdfActionPerformed(evt);
            }
        });

        html.setFont(new java.awt.Font("Tempus Sans ITC", 1, 36)); // NOI18N
        html.setText("HTML");
        html.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                htmlActionPerformed(evt);
            }
        });

        jTextArea2.setColumns(20);
        jTextArea2.setRows(5);
        jTextArea2.setText("1- Charger le fichier de données xlsx en premier  (si non fichier par defaut).\n2- Choisir le type de fichier résultat voulu.\n-A droite vous pouvez télécharger les fichiers de données xlsx ou xml courants \nutilisé par le programme.\n-Pour le fichier de données chargé vous devez en premier le télécharger puis le\nmodifier et en fin le charger (pour avoir la meme structure).\n! attention d'ecraser vos fichier.\n-Pour ce qui concerne l'emploi du temps cliquez sur schedule.");
        jTextArea2.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        jTextArea2.setEnabled(false);
        jScrollPane2.setViewportView(jTextArea2);

        xlsx_data.setFont(new java.awt.Font("Berlin Sans FB", 0, 12)); // NOI18N
        xlsx_data.setText("ginf2.xlsx");
        xlsx_data.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                xlsx_dataActionPerformed(evt);
            }
        });

        xml_data.setFont(new java.awt.Font("Berlin Sans FB", 0, 12)); // NOI18N
        xml_data.setText("ginf2.xml");
        xml_data.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                xml_dataActionPerformed(evt);
            }
        });

        schedule.setFont(new java.awt.Font("Berlin Sans FB", 0, 12)); // NOI18N
        schedule.setText("schedule ->");
        schedule.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                scheduleActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(200, 200, 200)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(jScrollPane2)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup()
                        .addComponent(html, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 46, Short.MAX_VALUE)
                        .addComponent(pdf, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(charge, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(80, 80, 80)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(xlsx_data, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(schedule, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(xml_data, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(20, 20, 20))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(20, 20, 20)
                .addComponent(charge, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(20, 20, 20)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(html, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(pdf, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(jScrollPane2)
                        .addContainerGap())
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 39, Short.MAX_VALUE)
                        .addComponent(xlsx_data)
                        .addGap(18, 18, 18)
                        .addComponent(xml_data)
                        .addGap(18, 18, 18)
                        .addComponent(schedule)
                        .addGap(13, 13, 13))))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void chargeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_chargeActionPerformed
        filechooser.setApproveButtonText("choose");
        filechooser.removeChoosableFileFilter(filechooser.getFileFilter());
        filechooser.setFileSelectionMode(JFileChooser.FILES_ONLY);
        filechooser.setFileFilter(new FileNameExtensionFilter("exel file", "xlsx"));
        int returnval =filechooser.showOpenDialog(this);
        if(returnval==JFileChooser.APPROVE_OPTION){
            try {
                String xml=filechooser.getCurrentDirectory() + "\\ginf2.xml";
                String xlsx=filechooser.getSelectedFile().getPath();
                xlsx_to_xml.transform(xlsx, xml);
                
                if(xlsx_to_xml.validateXMLSchema(xsd_ginf2_path, xml)){
                    FileUtils.copyFile(new File(xml), new File(xml_ginf2_path));
                    FileUtils.copyFile(new File(xlsx), new File(xlsx_ginf2_path));
                    JOptionPane.showMessageDialog(this, "xml bien validé et chargé");
                }else{
                    JOptionPane.showMessageDialog(this, "xml non valide");
                }
                
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(this, "input error");
            }
        }
    }//GEN-LAST:event_chargeActionPerformed

    private void xlsx_dataActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_xlsx_dataActionPerformed
        filechooser.setApproveButtonText("save");
        filechooser.removeChoosableFileFilter(filechooser.getFileFilter());
        filechooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        filechooser.setAcceptAllFileFilterUsed(false);
        int returnval =filechooser.showOpenDialog(this);
        if(returnval==JFileChooser.APPROVE_OPTION){
            try {
                FileUtils.copyFile(new File(xlsx_ginf2_path), new File(filechooser.getSelectedFile()+ "\\ginf2.xlsx"));
                JOptionPane.showMessageDialog(this, "Done");
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(this, "input error");
            }
        }
    }//GEN-LAST:event_xlsx_dataActionPerformed

    private void scheduleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_scheduleActionPerformed
        schedule_menu sm = new schedule_menu();
        sm.setVisible(true);
        sm.setLocationRelativeTo(null);
        sm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.dispose();
    }//GEN-LAST:event_scheduleActionPerformed

    private void xml_dataActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_xml_dataActionPerformed
        filechooser.setApproveButtonText("save");
        filechooser.removeChoosableFileFilter(filechooser.getFileFilter());
        filechooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        filechooser.setAcceptAllFileFilterUsed(false);
        int returnval =filechooser.showOpenDialog(this);
        if(returnval==JFileChooser.APPROVE_OPTION){
            try {
                FileUtils.copyFile(new File(xml_ginf2_path), new File(filechooser.getSelectedFile()+ "\\ginf2.xml"));
                FileUtils.copyFile(new File(xsd_ginf2_path), new File(filechooser.getSelectedFile()+ "\\ginf2.xsd"));
                JOptionPane.showMessageDialog(this, "Done");
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(this, "input error");
            }
        }
    }//GEN-LAST:event_xml_dataActionPerformed

    private void pdfActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_pdfActionPerformed
        pdf_menu pm = new pdf_menu();
        pm.setVisible(true);
        pm.setLocationRelativeTo(null);
        pm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.dispose();
    }//GEN-LAST:event_pdfActionPerformed

    private void htmlActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_htmlActionPerformed
        html_menu hm = new html_menu();
        hm.setVisible(true);
        hm.setLocationRelativeTo(null);
        hm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.dispose();
    }//GEN-LAST:event_htmlActionPerformed

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
            java.util.logging.Logger.getLogger(principale_menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(principale_menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(principale_menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(principale_menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new principale_menu().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton charge;
    private javax.swing.JButton html;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTextArea jTextArea2;
    private javax.swing.JButton pdf;
    private javax.swing.JButton schedule;
    private javax.swing.JButton xlsx_data;
    private javax.swing.JButton xml_data;
    // End of variables declaration//GEN-END:variables
}
