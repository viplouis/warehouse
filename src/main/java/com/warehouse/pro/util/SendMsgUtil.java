package com.warehouse.pro.util;





import org.apache.axis.client.Service;   


public class SendMsgUtil {
	public static void sendMessage(String content,String id,String phoneNum){
		try {  
            String endpoint = "http://10.11.2.23:80/base/services/messagecentertarget.ISendMessageForWebHttpEndpoint/";  
            // 直接引用远程的wsdl文件  
            // 以下都是套路  
            Service service = new Service();  
            org.apache.axis.client.Call call = (org.apache.axis.client.Call) service.createCall();  
            call.setTargetEndpointAddress(endpoint);  
            call.setOperationName(new javax.xml.namespace.QName("http://loushang.ws","readStringXml"));// WSDL里面描述的接口名称  
            call.addParameter("args0",  
                    org.apache.axis.encoding.XMLType.XSD_DATE,  
                    javax.xml.rpc.ParameterMode.IN);// 接口的参数  
            call.setReturnType(org.apache.axis.encoding.XMLType.XSD_STRING);// 设置返回类型  
            String temp = getXml(content, id, phoneNum); 
            System.out.println(temp);
            String result = (String) call.invoke(new Object[] { temp });  
            // 给方法传递参数，并且调用方法  
            System.out.println("result is " + result);  
        } catch (Exception e) {  
            System.err.println(e.toString());  
        }  
	}
    private static String getXml(String content,String id,String phoneNum){
    	StringBuffer sBuffer = new StringBuffer("");
		sBuffer.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + "<body>" + "<smsInfo>"
				+ "<appCode>hqgl</appCode><organId>");
		if(id!=null&&id!=""){
			sBuffer.append(id);
		}
		sBuffer.append("</organId>"
				+ "<pushType>1</pushType><content>");
		if(content!=null&&content!=""){
			sBuffer.append(content);
		}
		sBuffer.append("</content>" + "<param1>");
		
		if(phoneNum!=null&&phoneNum!=""){
			sBuffer.append(phoneNum);
		}
		sBuffer.append("</param1>" + "</smsInfo>" + "</body>");
		// System.out.println(sBuffer);
		String str = sBuffer.toString();
		return str;
    }
}