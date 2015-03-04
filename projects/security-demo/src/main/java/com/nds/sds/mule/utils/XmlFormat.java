package com.nds.sds.mule.utils;

import java.io.StringReader;
import java.io.StringWriter;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class XmlFormat {

	private static final Logger LOG = LoggerFactory.getLogger(XmlFormat.class);

	private static Document parseXmlFile(String in) {
		try {
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			InputSource is = new InputSource(new StringReader(in));
			return db.parse(is);

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public static String format(String input) throws TransformerException {

		Document doc = parseXmlFile(input);
		Transformer transformer = TransformerFactory.newInstance()
				.newTransformer();
		transformer.setOutputProperty(OutputKeys.INDENT, "yes");
		transformer.setOutputProperty(
				"{http://xml.apache.org/xslt}indent-amount", "3");
		// initialize StreamResult with File object to save to file
		StreamResult result = new StreamResult(new StringWriter());

		DOMSource source = new DOMSource(doc);
		transformer.transform(source, result);
		String xmlString = result.getWriter().toString();

		// LOG.debug(xmlString);
		xmlString = xmlString.replace("\n   ", "\n\t");
		while (xmlString.contains("\t   "))
			xmlString = xmlString.replace("\t   ", "\t\t");
		return xmlString;

	}
}
