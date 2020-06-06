//
//  Func.swift
//  BaiTapVeNhaBuoi1
//
//  Created by Đình Doanh on 6/6/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import Foundation
//1. Viết chương trình nhập vào số nguyên n. Hỏi:
//
//- n là số nguyên dương hay không?
//
//- n có phải là số chẵn hay không?
//
//- n có chia hết cho 5 hay không?
//
//- n có phải là số nguyên tố hay không?
func BT1(){
    print("Nhập n:")
    let n = Int(readLine() ?? "") ?? 0
    print("so vua nhap la :\(n)")
    
    if n <= 0 {
        print("so vua nhap là số nguyen âm : \(n)")
    }else{
        print("so vua nhap khong phải số nguyen âm : \(n)")
    }
    if n % 5 == 0 {
        print("so vua nhap co chia het cho 5")
    }else{
        print("so vua nhap không chia het cho 5")
    }
    if n < 2 && n % 2 == 0{
        print("so vua nhap không phải số nguyên tố")
    }else {
        print("so vua nhap là số nguyên tố")

    }
}
//2, Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
//- Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.
//- Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”

func BT2() {
    print("Nhập số a :")
    let a = Int(readLine() ?? "") ?? 0
    print("Nhập số b :")
    let b = Int(readLine() ?? "") ?? 0
    print("Nhập số c :")
    let c = Int(readLine() ?? "") ?? 0

    if (a + b > c)||(a + c > b)||(c + b > a) {
        print("Đây là tam Giác")
    }
    if (a==b) || (b==c) || (c==a){
        print("đây là tam giác cân")
    }else if (a == b) && (b == c) && (c == a){
        print("đây là tam giác đều")
    }else if(a * a == b * b + c * c) || (b * b == a * a + c * c) || (c * c == b * b + a * a){
        print("Đây là tam giác vuông")
    }else{
        print("đây không phải tam giác")
    }
}
//3. Nhập một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không

func BT3 (){
    print("Nhập số năm :")
    let year = Int(readLine() ?? "") ?? 0
    if year % 400 == 0 || year % 4 == 0 && year % 100 != 0 {
        print("Năm \(year) là năm nhuận ")
    }else{
        print("Năm \(year) không phải năm nhuận")
    }
}
//4. Nhập vào thời điểm T gồm 3 số theo dạng : “Giờ : Phút : Giây” và 1 số nguyên X <= 10000
//- Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu ?
//- Hãy in ra theo dạng “Giờ : Phút : Giây”

func BT4(){
    
    print("Nhập số giờ :")
    var hh = Int(readLine() ?? "") ?? 0
    
    print("Nhập số phút  :")
    var mm = Int(readLine() ?? "") ?? 0
    
    print("Nhập số giây :")
    var ss = Int(readLine() ?? "") ?? 0
    
    if (hh >= 0 && hh <= 24) && (mm >= 0 && mm <= 60) && (ss >= 0 && ss <= 60) {
            print("Thời gian bạn nhập là : \(hh):\(mm):\(ss):")
        }else{
            print(" thời gian bạn nhập không hợp lệ mời bạn nhập lại :))")
            return BT4()
            }
    
    print("Nhập số X :")
        let X = Int(readLine() ?? "") ?? 0
        if X > 10000{
            print("nhập lại X không quá 10000")
            return BT4()
    }else{
            ss = ss + X
            if ss + X < 60 {
                ss = ss + X
            }else
            if ss > 60 {
                ss = ss  - 60
                mm = mm + 1
            }else
            if mm > 60 {
                mm = mm - 60
                hh = hh + 1
            }
    }
    print("Thời gian bạn nhập sau khi thêm X là : \(hh):\(mm):\(ss)")

    print("bạn muốn nhập lại không (Y/N)?? ")
       let R = readLine() ?? ""
       switch R{
       case "y":
           return BT4()
       default:
           break
               }
}

//5. Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím).

func BT5() {
    
    print("nhap n = ")
    let n = Int(readLine() ?? "") ?? 0

    print("nhap m= ")
    let m = Int(readLine() ?? "") ?? 0
    let _ : Int = 5
    var s : Int = 1
    for i in 1..<n {
            s = s * i
    }
    if s > m  {
        print("so nho nhat la \(m)")
    }else{
        print("so nho nhat la \(s)")
    }
}

//6. Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 1)

func BT6(){
    print("Nhập chiều cao :")

    let H = Int(readLine() ?? "") ?? 0
    let i: Int = 1
    let j: Int = 1
    for i in i...H {
        for _  in j..<H {
            print(" ")
        }
        for _ in j...(2 * i -  1) {
                print("*")
        }
    }
}

//7.  Viết chương trình vẽ một chữ X bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 0 và là số lẻ)



//8. Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)
func BT8(){
    
    let i = Int()
    let j = Int()
    
   
    
}
//9. Vẽ hình chữ nhật rỗng
func BT9() {
    print("nhap chieu dai ")
    let d = Int(readLine() ?? "") ?? 0
    print("nhap chieu rong ")
    let r = Int(readLine() ?? "") ?? 0
    let i : Int = 1
    let k : Int = 1
    if d <= 0 || r <= 0 {
        print("ban phai nhap chieu dai va rong lon hon 0 ")
        return BT9()
    }
    for i in i...d {
        for k in k...r {
            if i==1 || k==1 || i==d || k == r{
                print("*")
            }else{
                print(" ")
            }
        }
    }
    
}
//10. Vẽ tam giác cân ngược

func BT10(){
    print("nhap chieu cao ")
    let H = Int(readLine() ?? "") ?? 0
    let i: Int = 1
    let j: Int = 1
    
    for i in i...H {
        for _ in j..<i {
            print(" ")
        }
        for _ in j...(H * 2 - (2*i-1)) {
            print("*")
        }
    }
}
