<!DOCTYPE html>

<html>
<head>
  <title>i工具箱</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  
  <style type="text/css">
    *,body {
      margin: 0px;
      padding: 0px;
    }

    body {
      margin: 0px;
      font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
      font-size: 14px;
      line-height: 20px;
      background-color: #fff;
    }

    header,
    footer {
      width: 960px;
      height:50px;
      margin-left: auto;
      margin-right: auto;
      background:#1ABC9C;
      color:white;
    }

    header {
      padding: 10px 0;
    }

    footer {
      line-height: 1.8;
      text-align: center;
      padding: 50px 0;
    }

    a {
      color:white;
      text-decoration: none;
    }
    .web_title{
      width:80px;
      height:50px;
      position:relative;
      float:left;
      display:inline-block;
      top:10px;
      font-size:20px;
    }

    .backdrop {
      position: absolute;
      width: 100%;
      height: 100%;
      box-shadow: inset 0px 0px 100px #ddd;
      z-index: -1;
      top: 0px;
      left: 0px;
    }
  </style>
</head>

<body>
  <header>
    <div style="width:60px;height:50px;position:relative;float:left;display:inline-block;">
      <div style="width:12px;height:20px;left:10px;top:25px;transform:skewY(30deg);background-color:green;position:absolute;"></div>
      <div style="width:12px;height:20px;left:37px;top:25px;transform:skewY(-30deg);background-color:green;position:absolute;"></div>
      <div style="width:6px;height:35px;left:24px;top:13px;transform:skewY(-30deg);background-color:greenYellow;position:absolute;"></div>
      <div style="width:6px;height:35px;left:30px;top:13px;transform:skewY(30deg);background-color:greenYellow;position:absolute;"></div>
      <div style="width:12px;height:20px;left:7px;top:5px;transform:rotate(-60deg) skewY(-30deg);background-color:#f6844e;position:absolute;"></div>
      <div style="width:12px;height:20px;left:41px;top:5px;transform:rotate(60deg) skewY(30deg);background-color:#f6844e;position:absolute;"></div>     
    </div>
    <div class="web_title">
      i工具箱
    </div>
  </header>
  <footer>
    <div class="author">
      &copy;2017 版权所有 / 联系站长：
      <a class="email" href="mailto:{{.Email}}">{{.Email}}</a>
      <br>
      备案/许可证编号：<a href="http://www.miitbeian.gov.cn">沪ICP备17026684号</a>     
    </div>
  </footer>
  <div class="backdrop"></div>

  <script src="/static/js/reload.min.js"></script>
</body>
</html>
