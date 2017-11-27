package com.lockbur.book.gateway.service;

public  interface StorageService {
	 /* public static final String DIRECTORY_IMAGE = "img";
	  public static final String DIRECTORY_PORTRAIT = "portrait";

	  public abstract String getAbsolutePath(String paramString);

	  public abstract String saveImage(byte[] paramArrayOfByte, String paramString);

	  public abstract String savePortrait(byte[] paramArrayOfByte, String paramString);*/


		//图片上传
		public int saveImage(String imgData, String directory, String fileName);

		public abstract String saveImage2(byte[] paramArrayOfByte, String paramString);

		//public abstract String savePortrait(byte[] paramArrayOfByte, String paramString);

		Object getAbsolutePath(String storagePath);
}
