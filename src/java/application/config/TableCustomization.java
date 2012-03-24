/*
Recite18th is a simple, easy to use and straightforward Java Database 
Web Application Framework. See http://code.google.com/p/recite18th
Copyright (C) 2011  Eko Suprapto Wibowo (swdev.bali@gmail.com)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/.
 */
/* HISTORY
August 10, 2011 = Use this to customize iText/PDF report also.
 */
package application.config;

import java.util.Hashtable;

public class TableCustomization {

    private static Hashtable hashTable = null;

    protected static void init() {
        hashTable = new Hashtable();
//        
//        Hashtable hashPegawai = new Hashtable();
//        hashPegawai.put("columnCount",17); //kolom No. tidak dihitung
//        hashPegawai.put("nip","NIP");
//        hashPegawai.put("no_karpeg","No. Kartu Pegawai");
//        hashPegawai.put("no_kartu_askes","No. Kartu Askes");
//        hashPegawai.put("nama_pegawai","Nama Pegawai");
//        hashPegawai.put("tempat_lahir","Tempat Lahir");
//        hashPegawai.put("tgl_lahir","Tanggal Lahir");
//        hashPegawai.put("jenis_kelamin","Jenis Kelamin");
//        hashPegawai.put("agama","Agama");
//        hashPegawai.put("golongan_darah","Golongan Darah");
//        hashPegawai.put("status_perkawinan","Status Perkawinan");
//        hashPegawai.put("status_kepegawaian","Status Kepegawaian");
//        hashPegawai.put("pendidikan_terakhir","Pendidikan Terakhir");
//        hashPegawai.put("tgl_lahir","Tanggal Lahir");
//        hashPegawai.put("pangkat_golongan_ruang","Pangk/Gol/Ruang");
//        hashPegawai.put("unit_kerja","Unit Kerja");
//        hashPegawai.put("bagian_unit_kerja","Bagian Unit Kerja");
//        hashPegawai.put("sub_unit_kerja","Sub Unit Kerja");
//        hashPegawai.put("alamat_ktp","Alamat KTP");
//        
//        
//        
//        hashTable.put("pegawai", hashPegawai);
//        
//        Hashtable hashUserAccount = new Hashtable();
//        hashUserAccount.put("columnCount", 3);
//        hashUserAccount.put("nip","NIP");
//        hashUserAccount.put("username","Username");
//        hashUserAccount.put("role","Role");
//        hashTable.put("user_account", hashUserAccount);
    }

    public static Hashtable getTable(String tableName) {
        if (hashTable == null) {
            init();
        }
        return (Hashtable) hashTable.get(tableName);
    }
}