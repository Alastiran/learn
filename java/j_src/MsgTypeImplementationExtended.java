package com.justin.examples;

public class MsgTypeImplementationExtended extends MsgTypeImplementation {
	@Override
	public String getMsgType() {
		return "MsgTypeImplementationExtended";
	}

	//overload the getMsg
	public String getMsg(String pre) {
		return pre+" "+getMsg();
	}

	//overload this time with an int
	public String getMsg(int post) {
		return " -- " + post;
	}
}
