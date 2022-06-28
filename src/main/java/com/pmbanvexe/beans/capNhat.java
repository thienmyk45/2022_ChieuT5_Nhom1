package com.pmbanvexe.beans;

public class capNhat {
    String ten,tacGia;
    int soLuong;
    String giaTien;

    public capNhat(String ten, String tacGia, int soLuong, String giaTien) {
        this.ten = ten;
        this.tacGia = tacGia;
        this.soLuong = soLuong;
        this.giaTien = giaTien;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getTacGia() {
        return tacGia;
    }

    public void setTacGia(String tacGia) {
        this.tacGia = tacGia;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public String getGiaTien() {
        return giaTien;
    }

    public void setGiaTien(String giaTien) {
        this.giaTien = giaTien;
    }

    @Override
    public String toString() {
        return "capNhat{" +
                "ten='" + ten + '\'' +
                ", tacGia='" + tacGia + '\'' +
                ", soLuong=" + soLuong +
                ", giaTien='" + giaTien + '\'' +
                '}';
    }
}
