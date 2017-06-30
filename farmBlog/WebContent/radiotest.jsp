<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function fRadio(form) {
    if(form.radioBtn[0].checked == true){
        window.open("http://naver.com");
    }else if( form.radioBtn[1].checked == true ){
        form.submit();
    }else{
    	alert('ddd')
    } 
}


</script>
</head>
<body>

<form name="form1" method=post action="abcd.html">
    <input name="radioBtn" type="radio" value="1" checked> AAA
    <input name="radioBtn" type="radio" value="2"> BBB
    <input type="button" onClick="fRadio(this.form);" value="결과보기"/>
</form>
</body>

</html>