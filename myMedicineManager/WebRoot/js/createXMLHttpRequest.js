function createXMLHttpRequest(){
	var xmlHttpReq = false;
	if(window.ActiveXObject){   //��IE����д���
		try{
			xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch(e){
			try{
				xmlHttpReq = new ActiveObject("Microsoft.XMLHTTP");
			}
			catch(ex){
				xmlHttpReq = false;
			}
		}
	}
	else if(window.XMLHttpRequest){ //�ڷ�IE������д���
		try{
			xmlHttpReq = new XMLHttpRequest();
		}
		catch(e){
			xmlHttpReq = false;
		}
	}
	return xmlHttpReq;
}