/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package form;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Eden_ramdan
 */
public class koneksi {
    public static String PathReport;
    private ResultSet rs;
    private Connection cn;
    private Statement st;
    public koneksi()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Error inisialisasi driver");
        }
        try
        {
            st = DriverManager.getConnection("jdbc:mysql://localhost/dbabsensi","root","").createStatement();
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Error koneksi ke database");
        }
    }
    public void insertData(String data)
    {
        try
        {
            st.executeUpdate(data);
            JOptionPane.showMessageDialog(null, "Berhasil Simpan Data");
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Gagalllllllllllllllllllll");
        }
    }
    public ResultSet lihatData(String a)
    {
        try
        {
            rs = st.executeQuery(a);
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "asassas");
        }
        return rs;
    }
}
