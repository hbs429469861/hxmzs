package com.lockbur.book.manager.controller;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;

import com.lockbur.book.common.utils.Result;
import com.lockbur.book.gateway.service.StorageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

@Controller
public class doUploadImg {

	@Autowired
	private StorageService storageService;
	private final Logger logger = LoggerFactory.getLogger(doUploadImg.this.getClass());

	private static final  String IMG_PROFIX = "http://admin.hbsong.cn/lbkactive/";

	//图片上传
	@ResponseBody
	@RequestMapping(value="doUploadImg",method = RequestMethod.POST)
	public String upload(HttpServletRequest request, HttpServletResponse response) throws IOException {


		JSONObject object=new JSONObject();
		// 获取参数
		String imgData = request.getParameter("imgData");

		//HttpUtils httpUtils= new HttpUtils();
		//创建一个路径
		SimpleDateFormat formatter=new SimpleDateFormat("yyyyMMdd");
		String timeStamp=formatter.format(new Date());

		StringBuilder sb=new StringBuilder();

		//相对路径
		String directory = sb.append("myImage").append(File.separator).append(timeStamp).append(File.separator).toString().replaceAll("\\\\", "/");

		// 生成新的图片名称（入库）
		String imgSuffix = imgData.split(",")[0];
		String fileName = UUID.randomUUID().toString().replaceAll("-", "") + imgSuffix;


		//图片访问路径
		int success = storageService.saveImage(imgData,directory,fileName);


		if (success>0){
			try {
				Result result = Result.newSuccess();
				object.put("result", Integer.valueOf(result.getResult()));
				object.put("message", "ok");
				//这里需要修改 http://active.beikexl.com/regist/repos/
				//http://192.168.1.104:80/regist/repos/ http://localhost:8082/wxweb-manager/repos http://testmanager.tunnel.2bdata.com/
				//object.put("url", "http://localhost:8082/newsImg/" + directory+fileName); http://http://210.51.190.27:8093/demo/file/myImage/
				//图片的绝对地址
				object.put("url", "http://admin.hbsong.cn/lbkactive/" + directory+fileName);
				object.put("path", directory+fileName);
			} catch (JSONException e) {
				e.printStackTrace();
			}

		}else{
			object.put("message", "保存失败");
		}

		return object.toString();

	}




	
		
		
		/*//教师节活动上传图片
		//图片上传
		@ResponseBody
		@RequestMapping(value="uploadByTeacher.jspa")
		public String uploadByTeacher(HttpServletRequest request,HttpServletResponse response) throws IOException {
			// 获取参数
			String imgData = request.getParameter("imgData");

			String storagePath=null;

			//创建一个路径

			SimpleDateFormat formatter=new SimpleDateFormat("yyyyMMdd");
			String timeStamp=formatter.format(new Date());
			StringBuilder sb=new StringBuilder();
			//相对路径
			String directory = sb.append("teacerImage").append(File.separator).append(timeStamp).append(File.separator).toString().replaceAll("\\\\", "/");



			JSONObject object=new JSONObject();
			//绝对路径../webapps/repos/			D:/tomcat/apache-tomcat-7.0.68/wtpwebapps/regist/repos/
			String path = "../webapps/repos/" + directory;
			//System.out.println("path:>>>>>"+path);
			//判断是否有该文件夹 没有则创建
			File targetFile = new File(path);
			if (!targetFile.exists()) {
				targetFile.mkdirs();
			}
			//System.err.println("==============================");
			// 生成新的图片名称（入库）
			String imgSuffix = imgData.split(",")[0];
			String fileName = UUID.randomUUID().toString().replaceAll("-", "") + imgSuffix;

			boolean flag = GenerateImage(imgData.split(",")[2], fileName, path,directory);

			try {
			      Result result = Result.newSuccess();
			      object.put("result", Integer.valueOf(result.getResult()));
			      object.put("message", result.getMsg());


			      object.put("url", "http://active.beikexl.com/regist/repos/" + directory+fileName);
			      object.put("path", directory+fileName);

			    } catch (JSONException e) {
			      e.printStackTrace();
			    }

				return object.toString();

		}*/

		
				// 将base64字符文件输出图像
				/*public static boolean GenerateImage(String imgStr, String fileName,	String path,String directory ) {
					// 对字节数组字符串进行Base64解码并生成图片
					if (imgStr == null) // 图像数据为空
						return false;
					BASE64Decoder decoder = new BASE64Decoder();
					try {
						// Base64解码
						byte[] b = decoder.decodeBuffer(imgStr);
						for (int i = 0; i < b.length; ++i) {
							if (b[i] < 0) {// 调整异常数据
								b[i] += 256;
							}
						}
						// 生成jpeg图片 j绝对路径
						String imgFilePath = path + fileName;// 新生成的图片
						
						OutputStream out = new FileOutputStream(imgFilePath);
						out.write(b);
						out.flush();
						out.close();
						return true;
					} catch (Exception e) {
						e.printStackTrace();
						return false;
					}
				}*/

	@ResponseBody
	@RequestMapping(value={"uploadImage"}, produces={"application/json;charset=UTF-8"})
	public String image(HttpServletRequest request, HttpSession session)
	{
		try{
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest)request;
			Map<String,MultipartFile> fileMap = multipartRequest.getFileMap();
			Iterator<String> iterator = fileMap.keySet().iterator();
			while(iterator.hasNext()){
				String key = iterator.next();
				MultipartFile file = fileMap.get(key);
				logger.info("key="+key+",file="+file.getName()+","+file.getOriginalFilename()+","+file.getSize());
			}
			MultipartFile file = multipartRequest.getFile("file1");
			String storagePath = null;
			try {
				logger.info("filename="+file.getOriginalFilename()+",byte="+file.getBytes().length);
				storagePath = this.storageService.saveImage2(file.getBytes(), file.getOriginalFilename());
				this.logger.info("UploadAction filename=" + file.getName() + ",originalname=" + file.getOriginalFilename() + ",size=" + file.getSize() + ",storagePath=" + storagePath);
			} catch (IOException e1) {
				e1.printStackTrace();
			}

			JSONObject json = new JSONObject();
			try {
				Result result = Result.newSuccess();
				json.put("result", Integer.valueOf(result.getResult()));
				json.put("message", result.getMsg());
				json.put("url", IMG_PROFIX+storagePath);
				System.out.println("url "+IMG_PROFIX+storagePath);
				json.put("path", storagePath);
			} catch (JSONException e) {
				e.printStackTrace();
			}
			return json.toString();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}




}
