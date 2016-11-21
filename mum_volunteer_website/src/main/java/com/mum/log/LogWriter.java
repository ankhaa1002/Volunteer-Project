package com.mum.log;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

@Component
public class LogWriter {

	private Logger logger = Logger.getLogger("");

	public void writeErrorLog(String msg){
		logger.error(msg);
		
	}
	public void writeInfoLog(String msg){
		logger.info(msg);
	}
	public void writeDebugLog(String msg){
		logger.debug(msg);
	}
}
