package com.supren.utils;


import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/**
 * springMVC 文件上传工具类
 */
public class FileUploadUtil {
    public static final List<String> ALLOW_TYPES = Arrays.asList(
            "image/jpg", "image/jpeg", "image/png", "image/gif" , "application/msword","application/vnd.openxmlformats-officedocument.wordprocessingml.document"
    );

    public static boolean allowUpload(String type) {
        return ALLOW_TYPES.contains(type);
    }

    public static void checkFileType(String type) {
        if (!allowUpload(type)) throw new RuntimeException("该文件类型不允许上传！只能是jpg 、gif、png、doc、docx 格式！");
    }

    /**
     * SpringMVC MultipartFile 文件上传
     *
     * @param absolutePath 项目绝对路径
     * @param relativePath 文件相对于服务器根目录
     * @param file         文件名称
     * @return 文件在服务器的地址
     */
    public static String upload(MultipartFile file, String absolutePath, String relativePath) throws IOException {
        return upload(file, absolutePath, relativePath, null);
    }

    public static String upload(MultipartFile file, String absolutePath, String relativePath, List<String> allowTypes) throws IOException {
        //检查文件类型是否允许上传列表，不允许则跑出异常。
        if (!file.isEmpty()) {
            String realName = file.getOriginalFilename();
            String suffix = realName.substring(realName.lastIndexOf("."));
            if (allowTypes != null) {
                if (!allowTypes.contains(file.getContentType())) {
                    throw new RuntimeException("该文件类型不允许上传!");
                }
            } else
                checkFileType(file.getContentType());

            String resourcesPath = PathFormat.parse(relativePath);
            String filePath = absolutePath + resourcesPath;
            String fileName = PathFormat.parse("{time}{rand:6}") + suffix;

            File dir = new File(filePath);
            if (!dir.exists()) {
                if (!dir.mkdirs()) throw new RuntimeException("创建文件夹失败！" + filePath);
            }
            file.transferTo(new File(filePath, fileName));
            return resourcesPath + fileName;
        } else
            return null;
    }
}
