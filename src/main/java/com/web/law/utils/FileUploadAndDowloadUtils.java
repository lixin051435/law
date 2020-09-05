package com.web.law.utils;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * @ClassName : FileUploadAndDowloadUtils
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-29 12:19
 */
public class FileUploadAndDowloadUtils {
    /**
     * 单文件上传到服务路径
     *
     * @param file
     * @param request
     * @return
     */
    public static String upload(MultipartFile file, HttpServletRequest request) {
        String url = "";
        String path = request.getSession().getServletContext().getRealPath("upload");
        String fileName = file.getOriginalFilename();
        if("".equals(fileName.trim())){
            return url;
        }
        String suffix = fileName.substring(fileName.lastIndexOf("."));
        fileName = KeyUtils.genItemId() + suffix;
        File targetFile = new File(path, fileName);
        //保存
        try {
            if (!targetFile.exists()) {
                targetFile.createNewFile();
            }
            file.transferTo(targetFile);
            url = "upload/" + fileName;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return url;


    }

    /**
     * 单文件上传到指定路径
     *
     * @param file
     * @param path
     * @return
     */
    public static String upload(MultipartFile file, String path) {
        String fileName = file.getOriginalFilename();
		/*int size = (int) file.getSize();
		System.out.println(fileName + "-->" + size);*/
        File dest = new File(path + "/" + fileName);
        if (!dest.getParentFile().exists()) { //判断文件父目录是否存在
            dest.getParentFile().mkdir();
        }
        try {
            file.transferTo(dest); //保存文件
            return path + "/" + fileName;
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 文件下载
     *
     * @param url      文件url
     * @param request
     * @param response
     * @return
     */
    public static String downLoad(String url, HttpServletRequest request, HttpServletResponse response) {
        String path = request.getRealPath("/");
        String backuppath = path + url;
        response.reset();
        response.setContentType("application/octet-stream; charset=utf-8");
        response.setHeader("Content-Disposition", "attachment; filename=" + backuppath);
        //读取文件
        try {
            InputStream in = new FileInputStream(backuppath);
            OutputStream out = response.getOutputStream();
            //写文件
            int b;
            while ((b = in.read()) != -1) {
                out.write(b);
            }
            in.close();
            out.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

}
