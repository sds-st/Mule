package com.nds.sds.mule.utils.test;
import javax.xml.transform.TransformerException;

import org.junit.Test;

import com.nds.sds.mule.utils.XmlFormat;

public class PrintXmlTest {

	
	
	@Test
	public void test() throws TransformerException {
		String input = "<user><name>Royal Bank of Canada</name><id>Royal_Bank_Of_Canada</id><cc><company>Visa</company><number>1234567890</number><secret>123</secret></cc></user>";
		System.out.println(XmlFormat.format(input));
	}
	
	
}
