/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Eden_ramdan
 */
public class KoneksiDB {
    private static Connection koneksi;
    private Connection cn;
    private Statement st;
    private ResultSet rs;
    
    public static Connection getKoneksi(){
        //cek apakak koneksi null
        if(koneksi == null){
            
            try {
                String url;
                url = "jdbc:mysql://localhost/dbabsensi";
                String user = "root";
                String password = "";
                
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                
                koneksi = DriverManager.getConnection(url,user,password);
            } catch (SQLException t){
                JOptionPane.showMessageDialog(null, "Eror Membuat Koneksi");
            }
        }
        
        return koneksi;
                
    }
    
    public ResultSet showData(String a){
        try{
            rs = st.executeQuery(a);
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, "can lur!");
        }
        return rs;
    }

    public void insertData(String data) {
        {
        try
        {
            st.executeUpdate(data);
            JOptionPane.showMessageDialog(null, "Berhasil Simpan Data");
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Gagal Insert Data");
        }
    }
    }   
}
