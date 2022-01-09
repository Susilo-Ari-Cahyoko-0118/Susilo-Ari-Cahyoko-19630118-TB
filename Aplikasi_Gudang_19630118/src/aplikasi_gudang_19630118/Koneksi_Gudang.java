/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplikasi_gudang_19630118;

import com.mysql.jdbc.Connection;
import java.io.File;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author LENOVO
 */
public class Koneksi_Gudang {
   /* public static Connection getKoneksi(String host, String port, String username, String password, String db) {
        String konString = "jdbc:mysql://" + host + ":" + port + "/" + db;
        Connection koneksi = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            koneksi = (Connection) DriverManager.getConnection(konString, username, password);
            System.out.println("koneksi berhasil");
        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(null, "Koneksi Database Error " + ex.getMessage());
            koneksi = null;
        } catch (ClassNotFoundException ex) {
            JOptionPane.showMessageDialog(null, "kelas Error " + ex.getMessage());

        }
        return koneksi;

    } */
    private Connection koneksi;
    //untuk koneksi ke driver mysql
    public Connection connect(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Berhasil load Drivernya");
// untuk mengetahui kalau driver berhasil doload
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Koneksi_Gudang.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("gagal load Drivernya " + ex);
        }
        //untuk koneksi database
        try {
        String url = "jdbc:mysql://localhost:3306/dbgudang";//nama database yang akan dibuat
            koneksi = (Connection) DriverManager.getConnection(url,"root","");
            System.out.println("Berhasil terkoneksi ke database");
        } catch (SQLException ex) {
            Logger.getLogger(Koneksi_Gudang.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Gagal terkoneksi ke database");
            JOptionPane.showMessageDialog(null, "Gagal terkoneksi","Peringatan",
                    JOptionPane.WARNING_MESSAGE);
        }
            return koneksi;
    }
     public void tampilLaporan(String laporanFile, String SQL){
    try {
            File file = new File(laporanFile);
            JasperDesign jasDes = JRXmlLoader.load(file);

            JRDesignQuery sqlQuery = new JRDesignQuery();
            sqlQuery.setText(SQL);
            jasDes.setQuery(sqlQuery);

             JasperReport JR = JasperCompileManager.compileReport(jasDes);
             JasperPrint JP = JasperFillManager.fillReport(JR,null,connect());
             JasperViewer.viewReport(JP,false);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,e.toString());
      }
    }
    

}
