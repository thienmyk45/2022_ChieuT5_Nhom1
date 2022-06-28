package com.pmbanvexe.controller;

import com.pmbanvexe.beans.capNhat;
import com.pmbanvexe.dao.CapNhatDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import static java.awt.SystemColor.window;

@WebServlet(name = "CapNhatController", value = "/Cap-Nhat")
public class CapNhatController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/CapNhat.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String ten = request.getParameter("TenSach").trim();
        String tacGia = request.getParameter("TacGia").trim();
        int soLuong = Integer.parseInt(request.getParameter("SL").trim());
        String tien = request.getParameter("Gia").trim();

        capNhat c = CapNhatDAO.getInstance().add(ten,tacGia,soLuong,tien);
        request.setAttribute("ten",ten);

        doGet(request, response);
    }
}
