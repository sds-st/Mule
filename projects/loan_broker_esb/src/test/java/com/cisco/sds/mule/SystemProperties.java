package com.cisco.sds.mule;

import static org.junit.Assert.*;

import java.net.InetAddress;
import java.nio.charset.Charset;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class SystemProperties {
	protected static final Logger LOG = LoggerFactory.getLogger(SystemProperties.class);

	@Test
	public void SystemTest() {
		
		
		

		String prop = 	System.getProperty("mule.security.model");
		boolean fips = "fips140-2".equals(System.getProperty("mule.security.model"));
			LOG.debug(prop);
			LOG.debug(fips+"");
	}


	@Test
	public void printSystemProperties() throws Exception  
	{
		LOG.debug("System Properties:");
		LOG.debug("=================");

		LOG.debug("file.separator: " + System.getProperty("file.separator"));
		LOG.debug("line.separator: " + System.getProperty("line.separator"));
		LOG.debug("path.separator: " + System.getProperty("path.separator"));
		
		LOG.debug("java.home: " + System.getProperty("java.home"));
		LOG.debug("java.version: " + System.getProperty("java.version"));
		LOG.debug("os.arch: " + System.getProperty("os.arch"));
		LOG.debug("os.name: " + System.getProperty("os.name"));
		LOG.debug("os.version: " + System.getProperty("os.version"));
		
		LOG.debug("user.name: " + System.getProperty("user.name"));
		LOG.debug("user.dir: " + System.getProperty("user.dir"));
		LOG.debug("user.home: " + System.getProperty("user.home"));
		
		LOG.debug("local machine name: " + InetAddress.getLocalHost().getHostName());
		LOG.debug("Default charset: " + Charset.defaultCharset());
		
		
	}
}
