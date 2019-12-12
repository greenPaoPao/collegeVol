package com.collegevol;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;

public class TestPictureDownload {
    private static void downloadPicture(String urlList, String path) {
        URL url = null;
        try {
            url = new URL(urlList);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());
            FileOutputStream fileOutputStream = new FileOutputStream(new File(path));
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int length;
            while ((length = dataInputStream.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            fileOutputStream.write(output.toByteArray());
            dataInputStream.close();
            fileOutputStream.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {

        downloadPicture("http://47.102.128.138:8888/images/ceshi/avatar3.jpg",
                "J:\\记录\\app\\project\\sunlord\\pdf\\新建文件夹\\9.2\\UI\\1.jpg");

        System.out.println("download end");
    }
}
