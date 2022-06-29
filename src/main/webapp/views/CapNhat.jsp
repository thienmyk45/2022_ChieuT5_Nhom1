<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../assets/css/style.css">
<c:if test="${ten != null}">
    <script>
        alert('Thêm thành công!')
        window.location.href = "Cap-Nhat"
    </script>
</c:if>
<div id="content">
    <div id="book">
        <div class="left">
            <div class="book">
                <h1>Nhập thông tin sách</h1>
                <div class="card">
                    <form id="myForm" action="Cap-Nhat"  method="post">
                        <label>Tên sách:</label>  <input type="text" name="TenSach" id="TenSach" required/><br>
                        <label>Tác giả:</label>  <input type="text" name="TacGia" required/><br>
                        <label>Số Lượng:</label> <input type="text" name="SL" required/><br>
                        <label>Giá:</label> <input type="text" name="Gia" required/><br>
                    </form>
                    <class class="summitFinal">
                        <button type="submit" form="myForm" value="submit" style="font-size: 30px" >Cập nhật</button>
                    </class>

                </div>
                <div class="choose-diagram">Vui lòng nhập đúng thông tin sách </div>
            </div>
        </div>
    </div>
</div>
<script src="./assets/js/main.js"></script>
</body>
</html>
