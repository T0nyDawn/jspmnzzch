
package com.entity;

/**
 * 自定义异常
 */
public class EIException extends RuntimeException {
	private static final long serialVersionUID = 1L;
	
    private String msg;
    private int code = 500;
    
    public EIException(String msg) {
		super(msg);
		this.msg = msg;
	}
//	这段代码定义了一个名为"EIException"的public类，该类是从Java内置的"Exception"类派生而来的。构造函数采用一个字符串参数"msg"，并通过调用父类"Exception"的构造函数来将该参数传递给父类。此外，构造函数还将该参数保存在变量"msg"中，以便后续在代码中使用。
//
//总体而言，这段代码的目的是创建一个自定义异常类，用于在程序执行过程中遇到错误时抛出，并包含有关错误的信息。
	public EIException(String msg, Throwable e) {
		super(msg, e);
		this.msg = msg;
	}
//	这段代码定义了一个名为 "EIException" 的类，它继承自 "Exception" 类。这个类有两个参数的构造函数，第一个参数 "msg" 是错误消息，第二个参数 "e" 是一个 Throwable 对象，表示导致这个异常的原因。
//
//这个构造函数会首先调用父类 "Exception" 的两个参数的构造函数，传递 "msg" 和 "e" 作为参数。然后将 "msg" 赋值给实例变量 "this.msg"，以便在需要的时候可以访问该变量存储的错误消息。
//
//总之，这段代码是用于创建一个自定义异常类的模板，并且允许在捕获到异常时提供错误消息和导致异常的原因。
	public EIException(String msg, int code) {
		super(msg);
		this.msg = msg;
		this.code = code;
	}
	
	public EIException(String msg, int code, Throwable e) {
		super(msg, e);
		this.msg = msg;
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}
	
	
}
