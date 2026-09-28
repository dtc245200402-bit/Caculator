# Calculator - Java Servlet & JSP

Bài tập ứng dụng Calculator gồm 4 phép toán: Cộng, Trừ, Nhân, Chia.

## Công nghệ
- Java Servlet
- JSP
- Maven
- Apache Tomcat 9+

## Chạy bằng IntelliJ IDEA
1. Mở thư mục `CalculatorServlet`.
2. Maven reload project.
3. Cấu hình Apache Tomcat 9.
4. Deploy artifact `calculator:war exploded`.
5. Chạy Tomcat và mở `/calculator/`.

## Chạy bằng Maven
```bash
mvn clean package
```
Sau đó lấy file `target/calculator.war` đưa vào thư mục `webapps` của Tomcat 9.

## Cấu trúc
- `index.jsp`: form nhập 2 toán hạng và toán tử.
- `Calculator.java`: xử lý phép tính.
- `CalculatorServlet.java`: nhận dữ liệu, gọi Calculator, bắt lỗi chia cho 0 và hiển thị kết quả.
