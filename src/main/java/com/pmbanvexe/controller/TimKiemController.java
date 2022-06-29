package com.pmbanvexe.controller;

import com.pmbanvexe.beans.capNhat;
import com.pmbanvexe.beans.test;
import com.pmbanvexe.dao.CapNhatDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "TimKiemController", value = "/Tim-Kiem")
public class TimKiemController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
        RequestDispatcher rq = req.getRequestDispatcher("/views/TimKiem.jsp");
        rq.forward(req,resp);
    }
//    http://localhost:8080/CNPM_PMBanVeXe_war/Tim-Kiem?search=hhh&choices-single-defaul=0
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String s = request.getParameter("search").trim();
        String choices = request.getParameter("choices-single-defaul").trim();

        doGet(request, response);
    }
}
