package com.lockbur.book.service.impl;


import com.lockbur.book.gateway.service.StorageService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import sun.misc.BASE64Decoder;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;


@Service
public class StorageServiceImpl implements StorageService {
	private Logger logger = Logger.getLogger(super.getClass());
	private String baseUrlPath;
	private String storagePath;

	public String getBaseUrlPath() {
		return baseUrlPath;
	}

	public void setBaseUrlPath(String baseUrlPath) {
		this.baseUrlPath = baseUrlPath;
	}



	public String getStoragePath() {
		return storagePath;
	}

	public void setStoragePath(String storagePath) {
		this.storagePath = storagePath;
	}

	public int saveImage(String imgData, String directory, String fileName) {

		//设置图片存放路径
		/*String path = "D:/tomcat/apache-tomcat-7.0.70/webapps/newsImg/" + directory; http://managertest.tunnel.2bdata.com/newsImag/  ../webapps/newsImg/ D:/newsImg/*/

		//String path ="/storage/wxweb-manager/myImage/" + directory;    /data/images/lbkactive/  	/storage/bkwxweb/

		//String path = "/storage/bkwxweb/" + directory;

		String path ="/data/images/lbkactive/"+directory;

		//String path ="D:/tomcat/apache-tomcat-7.0.70/webapps/newsImg/"+directory;

		//String path ="/storage/bkwxweb/"+directory;

		//判断是否有该文件夹 没有则创建
		File targetFile = new File(path);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		boolean flag = GenerateImage(imgData.split(",")[2], fileName, path,directory);

		//System.out.println(imgData);

		//System.out.println(" :"+imgData.split(",")[2]);

		return 1;
	}



	@Override
	public Object getAbsolutePath(String storagePath) {
		return null;
	}


	public static boolean GenerateImage(String imgStr, String fileName,	String path,String directory ) {
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
	}


	public String saveImage2(byte[] file, String filename)
	{
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
		String timeStamp = formatter.format(new Date());
		StringBuilder sb = new StringBuilder();
		sb.append("myImage").append(File.separator).append(timeStamp).append(File.separator);
		String fname = String.valueOf(System.currentTimeMillis()) + filename.substring(filename.lastIndexOf("."));
		return save(file, sb.toString().replaceAll("\\\\", "/"), fname);
	}





	private String save(byte[] file, String directory, String filename) {
		String path ="/data/images/lbkactive/"+directory;
		//String path ="D:/tomcat/apache-tomcat-7.0.70/webapps/newsImg/"+directory;
		System.out.println(path+" path");
		//String path = this.storagePath + directory;
		ByteArrayInputStream bais = null;
		BufferedOutputStream bos = null;
		try {
			bais = new ByteArrayInputStream(file);
			File dir = new File(path);
			if (!(dir.exists())) {
				dir.mkdirs();
			}
			bos = new BufferedOutputStream(new FileOutputStream(path + filename));
			int len = 0;
			byte[] buf = new byte[1024];
			while ((len = bais.read(buf)) > 0) {
				bos.write(buf, 0, len);
			}
			bos.flush();
			this.logger.info("save file" + path + filename);
			return directory + filename;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (bais != null) {
				try {
					bais.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (bos != null) {
				try {
					bos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	//=============================================================================================

	  /*private String baseUrlPath;
	  private String storagePath;

	 public String getBaseUrlPath() {
		return baseUrlPath;
	}

	public void setBaseUrlPath(String baseUrlPath) {
		this.baseUrlPath = baseUrlPath;
	}

	public String getStoragePath() {
		return storagePath;
	}

	public void setStoragePath(String storagePath) {
		this.storagePath = storagePath;
	}

	public String getAbsolutePath(String relativePath) {
		return relativePath;
	}


	  public static void main(String[] args)
	  {
	    Calendar cal = Calendar.getInstance();
	    cal.add(5, -1);
	    System.out.println(cal.getTime());
	  }
	public String saveImage(byte[] file, String filename) {
		SimpleDateFormat formatter=new SimpleDateFormat("yyyyMMdd");
		String timeStamp=formatter.format(new Date());
		StringBuilder sb=new StringBuilder();
		sb.append("img").append(File.separator).append(timeStamp).append(File.separator);
		String fname = String.valueOf(System.currentTimeMillis()) + filename.substring(filename.lastIndexOf("."));
	    return save(file, sb.toString(), fname);
	}

	public String savePortrait(byte[] file, String filename) {
		SimpleDateFormat formatter=new SimpleDateFormat("yyyyMMdd");
		String timeStamp=formatter.format(new Date());
		StringBuilder sb=new StringBuilder();
		sb.append("myImage").append(File.separator).append(timeStamp).append(File.separator);
		String fname = String.valueOf(System.currentTimeMillis()) + filename.substring(filename.lastIndexOf("."));
	    return save(file, sb.toString(), fname);
	}

	private String save(byte[] file, String directory, String filename) {
		//这里需要修改
		String path = "../wtpwebapps/regist/repos/" + directory;
	    ByteArrayInputStream bais = null;
	    BufferedOutputStream bos = null;
	    try {
	      bais = new ByteArrayInputStream(file);
	      File dir = new File(path);
	      if (!(dir.exists())) {
	        dir.mkdirs();
	      }
	      bos = new BufferedOutputStream(new FileOutputStream(path + filename));
	      int len = 0;
	      byte[] buf = new byte[1024];
	      while ((len = bais.read(buf)) > 0) {
	        bos.write(buf, 0, len);
	      }
	      int i=1;
	      if(i==1){
	    	  bos.flush();
	      }
	      bos.flush();
	     //bos.flush();
	      return directory + filename;
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      if (bais != null) {
	        try {
	          bais.close();
	        } catch (IOException e) {
	          e.printStackTrace();
	        }
	      }
	      if (bos != null) {
	        try {
	          bos.close();
	        } catch (IOException e) {
	          e.printStackTrace();
	        }
	      }
	    }
	    return null;
	  }
*/
}
