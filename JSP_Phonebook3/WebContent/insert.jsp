<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert</title>
<link rel="stylesheet" type="text/css" href="CSS/phonebook.css"/>
<script src="ckeditor/ckeditor.js"/>
</head>
<script>
function chkSubmit(){
	frm = document.forms["frm"];
	
	var name = frm["name"].value.trim();

    if (name == "") {
        alert("Please insert your name");
        return false;
    }
    return true;
}

</script>
<body>
<h2>New Registration</h2>
<br>
<form name="frm" action="insertOk.jsp" onsubmit="return chkSubmit()">
Name :
<input type="text" name="name"/><br>
Phone Number :
<input type="text" name="phonenum"/><br>
E-mail :
<input type="text" name="email"/><br>
Memo :<br>
<textarea name="memo" id="editor1"></textarea>
<script>
	CKEDITOR.replace('editor1', {
		allowedContent: true, // html 태그 자동삭제 방지 설정
		//width: 640,
		//height: 600
		filebrowserUploadUrl : '${pageContext.request.contextPath}/fileUpload.jsp'
		
		
	});
</script>
<br><br>
<input type="submit" value="Submit"/>
</form>
<br>
<button onclick="location.href='list.jsp'">List</button>
</body>
</html>