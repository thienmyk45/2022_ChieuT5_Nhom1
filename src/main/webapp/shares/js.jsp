<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script src='<c:url value="/assets/js/main.js"/>'/></script>
<script src='<c:url value="/assets/js/choices.js"/>'/></script>

<script>
    document.getElementById("truyenKieu").style.display = 'none';
    document.getElementById("namCao").style.display = 'none';
    document.getElementById("tatDen").style.display = 'none';

    const choices = new Choices('[data-trigger]',
        {
            searchEnabled: false
        });

    function myFunction(){
        var s = document.getElementById("search").value;
        var c = document.getElementById("choose").value;
        var re = false;
        if(s == ""){
            alert("không có giá trị được nhập!!!!")
        }
        else if(c == 0){
            alert("Vui lòng chọn loại!!!")
        }
        else if((s== "Nam Cao"|| s == "nam cao")&& c==1){
            re = true;
            document.getElementById("namCao").style.display = 'block';
            document.getElementById("tatDen").style.display = 'none';
            document.getElementById("truyenKieu").style.display = 'none';
        }
        else if((s== "tắt đèn"|| s == "Tắt Đèn")&& c==2){
            re = true;
            document.getElementById("namCao").style.display = 'none';
            document.getElementById("truyenKieu").style.display = 'none';
            document.getElementById("tatDen").style.display = 'block';
        }
        else if((s== "truyen kieu"|| s == "Truyện Kiều")&& c==2){
            re = true;
            document.getElementById("truyenKieu").style.display = 'block';
            document.getElementById("tatDen").style.display = 'none';
            document.getElementById("namCao").style.display = 'none';
        }else{
            alert("Không tìm thấy tác giả/tác phẩm")
            re = false;
            document.getElementById("tatDen").style.display = 'none';
            document.getElementById("namCao").style.display = 'none';
            document.getElementById("truyenKieu").style.display = 'none';
        }
        if(re== true){
            document.getElementById("form-search").style.position = "absolute";
            document.getElementById("form-search").style.top = "100px";
        }
    }
</script>