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
package application.config;
import java.util.Hashtable;

public class TableCustomization
{
    private static Hashtable hashTable = null;
    protected static void init()
    {
        hashTable = new Hashtable();
        
        Hashtable hashPegawai = new Hashtable();
        hashPegawai.put("nip","NIP");
        hashPegawai.put("nama_lengkap","Nama Lengkap");
        hashPegawai.put("nomor_seri_kartu_pegawai","Nomor Seri Kartu Pegawai");
        hashPegawai.put("tempat_lahir","Tempat Lahir");
        hashPegawai.put("agama","Agama");
        hashPegawai.put("idunit_kerja","Unit Kerja");
        hashTable.put("pegawai", hashPegawai);
    }
    public static Hashtable getTable(String tableName)
    {
        if(hashTable==null)
        {
            init();
        }
        return (Hashtable) hashTable.get(tableName);
    }
}