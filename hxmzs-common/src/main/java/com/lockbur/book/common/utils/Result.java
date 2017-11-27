package com.lockbur.book.common.utils;

import java.io.Serializable;

public class Result
  implements Serializable
{
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
public static final int SUCCESS = 0;
  public static final int FAIL = -1;
  public static final int NOAUTH = -2;
  private int result;
  private String msg;

  public int getResult()
  {
    return this.result;
  }

  public String getMsg() {
    return this.msg;
  }

  public void setMsg(String msg) {
    this.msg = msg;
  }

  public void setResult(int result) {
    this.result = result;
  }

  public boolean canSuccess() {
    return (this.result == 0);
  }

  public static Result newSuccess() {
    Result result = new Result();
    result.setResult(0);
    result.setMsg("success");
    return result;
  }

  public static Result newFailure(String info) {
    Result result = new Result();
    result.setResult(-1);
    result.setMsg(info);
    return result;
  }

  public static Result newAuthFailure(String info) {
    Result result = new Result();
    result.setResult(-2);
    result.setMsg(info);
    return result;
  }
}