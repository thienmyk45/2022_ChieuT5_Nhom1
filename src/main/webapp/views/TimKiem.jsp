<%--
  Created by IntelliJ IDEA.
  User: Admin-s
  Date: 6/29/2022
  Time: 9:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
</head>
<body>
<div class="s131">
    <form id="form-search" >
        <div class="inner-form">
            <div class="input-field first-wrap">
                <input id="search" name="search" type="text" placeholder="What are you looking for?" required/>
            </div>
            <div class="input-field second-wrap">
                <div class="input-select">
                    <select id="choose" data-trigger="" name="choices-single-defaul">
                        <option value="0" placeholder="">Chọn loại</option>
                        <option value="1">Tác giả</option>
                        <option value="2">Tác phẩm</option>
                    </select>
                </div>
            </div>
            <div class="input-field third-wrap">
                <button class="btn-search" type="button" onclick="myFunction()">TÌM KIẾM</button>
            </div>
        </div>
    </form>
    <div class="data">
        <table id="namCao">
            <tr>
                <th>Tác giả</th>
                <th>Tác phẩm</th>
                <th>Giá (VNĐ)</th>
            </tr>
            <tr>
                <td rowspan="5">Nam Cao</td>
                <td>Tiểu thuyết Sống mòn</td>
                <td>20.000</td>
            </tr>
            <tr>
                <td>Truyện ngắn Đôi mắt</td>
                <td>50.000</td>
            </tr>
            <tr>
                <td>Truyện ngắn Chí Phèo</td>
                <td>75.000</td>
            </tr>
            <tr>
                <td>Truyện ngắn Lão Hạc</td>
                <td>45.000</td>
            </tr>
            <tr>
                <td>Truyện ngắn Đời thừa</td>
                <td>15.000</td>
            </tr>
        </table>
        <table id="tatDen">
            <tr>
                <th>Tác phẩm</th>
                <th>Tác giả</th>
                <th>Giá (VNĐ)</th>
            </tr>
            <tr>
                <td>Tắt đèn</td>
                <td>Ngô Tất Tố</td>
                <td>20.000</td>
            </tr>
        </table>
        <table id="truyenKieu">
            <tr>
                <th>Tác phẩm</th>
                <th>Tác giả</th>
                <th>Giá (VNĐ)</th>
            </tr>
            <tr>
                <td>Truyện Kiều</td>
                <td>Nguyễn Du</td>
                <td>110.000</td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>

