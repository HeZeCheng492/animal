package com.controller;

import com.annotation.IgnoreAuth;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.ConfigEntity;
import com.entity.EIException;
import com.service.ConfigService;
import com.utils.R;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 上传文件映射表
 */
@RestController
@RequestMapping("file")
@SuppressWarnings({"unchecked","rawtypes"})
public class FileController{
	@Autowired
    private ConfigService configService;


	@Value("${upload.base-dir1}")
	private String uploadBaseDir1;

	@Value("${upload.base-dir2}")
	private String uploadBaseDir2;

	/**
	 * 上传文件
	 */
	@RequestMapping("/upload")
	public R upload(@RequestParam("file") MultipartFile file, String type, HttpServletRequest request) throws Exception {
		if (file.isEmpty()) {
			throw new EIException("上传文件不能为空");
		}
		String fileExt = StringUtils.getFilenameExtension(file.getOriginalFilename());
		String fileName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "." + fileExt;

		// 构建文件上传路径
		Path uploadPath1 = Paths.get(uploadBaseDir1, fileName);
		Path uploadPath2 = Paths.get(uploadBaseDir2, fileName);
		// 保存文件
		file.transferTo(uploadPath1);
		file.transferTo(uploadPath2);

		if(StringUtils.hasText(type) && type.equals("1")) {
			ConfigEntity configEntity = configService.selectOne(new EntityWrapper<ConfigEntity>().eq("name", "faceFile"));
			if(configEntity==null) {
				configEntity = new ConfigEntity();
				configEntity.setName("faceFile");
				configEntity.setValue(fileName);
			} else {
				configEntity.setValue(fileName);
			}
			configService.insertOrUpdate(configEntity);
		}
		return R.ok().put("file", fileName);
	}

	/**
	 * 下载文件
	 */
	@IgnoreAuth
	@RequestMapping("/download")
	public void download(@RequestParam String fileName, HttpServletResponse response) {
		try {
			File file = new File(uploadBaseDir1, fileName);

			if (file.exists()) {
				response.reset();
				response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
				response.setHeader("Cache-Control", "no-cache");
				response.setHeader("Access-Control-Allow-Credentials", "true");
				response.setContentType("application/octet-stream; charset=UTF-8");

				try (FileInputStream fis = new FileInputStream(file);
					 OutputStream os = response.getOutputStream()) {
					byte[] buffer = new byte[1024];
					int len;
					while ((len = fis.read(buffer)) != -1) {
						os.write(buffer, 0, len);
					}
					os.flush();
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
