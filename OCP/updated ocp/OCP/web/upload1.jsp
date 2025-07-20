<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%
    String course = null;
    //course=request.getParameter("course");
    course = (String) session.getAttribute("course");
    System.out.println("Course is: :" + course);
    String contentType = request.getContentType();
    if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
        DataInputStream in = new DataInputStream(request.getInputStream());
        int formDataLength = request.getContentLength();
        byte dataBytes[] = new byte[formDataLength];
        int byteRead = 0;
        int totalBytesRead = 0;
        while (totalBytesRead < formDataLength) {
            byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
            totalBytesRead += byteRead;
        }
        String file = new String(dataBytes);
        String saveFile = file.substring(file.indexOf("filename=\"") + 10);
        saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
        saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
        int lastIndex = contentType.lastIndexOf("=");
        String boundary = contentType.substring(lastIndex + 1, contentType.length());
        int pos;
        pos = file.indexOf("filename=\"");
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        int boundaryLocation = file.indexOf(boundary, pos) - 4;
        int startPos = ((file.substring(0, pos)).getBytes()).length;
        int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
        File f = new File("C:/Users/CIT/Documents/NetBeansProjects/OCP/web/Course/" + course + "/" + saveFile);
        FileOutputStream fileOut = new FileOutputStream(f);
        fileOut.write(dataBytes, startPos, (endPos - startPos));
        fileOut.flush();
        fileOut.close(); %>
<Br>
<table border="2">
    <tr>
        <td>

            <% //out.println(saveFile);
                session.setAttribute("umsg", "<b>You have Successfully uploaded the File by the Name of : </b>'" + saveFile + "'");
                response.sendRedirect("pre_upload.jsp");
            %>
        </td></tr></table>
<% }%>