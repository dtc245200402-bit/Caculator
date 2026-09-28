<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Calculator - Java Servlet</title>
    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: Arial, sans-serif;
            background: #f3f6fa;
        }
        .calculator {
            width: 430px;
            background: white;
            padding: 30px;
            border-radius: 14px;
            box-shadow: 0 8px 25px rgba(0,0,0,.12);
        }
        h1 { margin-top: 0; text-align: center; color: #222; }
        label { display: block; margin: 14px 0 7px; font-weight: bold; }
        input, select, button {
            width: 100%; padding: 11px; border-radius: 7px;
            border: 1px solid #ccc; font-size: 16px;
        }
        button {
            margin-top: 20px; border: 0; background: #1976d2;
            color: white; cursor: pointer; font-weight: bold;
        }
        button:hover { background: #125ca5; }
        .result, .error {
            margin-top: 22px; padding: 14px; border-radius: 8px;
            font-size: 17px;
        }
        .result { background: #e8f5e9; color: #1b5e20; }
        .error { background: #ffebee; color: #b71c1c; }
    </style>
</head>
<body>
<div class="calculator">
    <h1>Calculator</h1>
    <form action="${pageContext.request.contextPath}/calculate" method="post">
        <label for="firstOperand">Toán hạng 1</label>
        <input id="firstOperand" type="number" step="any" name="firstOperand" required>

        <label for="operator">Toán tử</label>
        <select id="operator" name="operator">
            <option value="+">Cộng (+)</option>
            <option value="-">Trừ (-)</option>
            <option value="*">Nhân (*)</option>
            <option value="/">Chia (/)</option>
        </select>

        <label for="secondOperand">Toán hạng 2</label>
        <input id="secondOperand" type="number" step="any" name="secondOperand" required>

        <button type="submit">Tính</button>
    </form>

    <% if (request.getAttribute("result") != null) { %>
        <div class="result">
            Kết quả: <strong><%= request.getAttribute("result") %></strong>
        </div>
    <% } %>

    <% if (request.getAttribute("error") != null) { %>
        <div class="error">
            Lỗi: <strong><%= request.getAttribute("error") %></strong>
        </div>
    <% } %>
</div>
</body>
</html>
