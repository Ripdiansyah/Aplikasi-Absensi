/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Eden_ramdan
 */
public class insert implements interface2 {
       private String id_pegawai;
       private String nama;
       private String jabatan;
       private String id_jam_kerja;
       private String tanggal;
       KoneksiDB kn = new KoneksiDB();
       
       public void setID (String id){
           this.id_pegawai = id;
       }
       
       public void setNama (String nama){
           this.nama = nama;
       }
       public void setJabatan (String jabatan){
           this.jabatan = jabatan;
       }
       
       public void setJK (String hasil){
           this.id_jam_kerja = id_jam_kerja;
       }
       
       public void setData(){
        String data="INSERT INTO pegawai values(?, ?, ?, ?, ?)";
        kn.insertData(data);
    }
       public void sethead(){
        String data="INSERT INTO head_absen values(Null, ?)";
        kn.insertData(data);
    }
       

    
    @Override
    public void SetData() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   
    @Override
    public void SetID(String id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void SetNama(String nama) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void SetJabatan(String jabatan) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void SetJK(String jk) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    String setID() {
        throw new UnsupportedOperationException("Not yet implemented");
    }
}
