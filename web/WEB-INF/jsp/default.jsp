<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <title>登录界面</title>
    <link href="css/default.css" rel="stylesheet" type="text/css" />

    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/loaders.css" rel="stylesheet" type="text/css" />
</head>
<style>
    .erro{
        color: red;
        font-size: 14px;
        margin-left:10px;
    }
    .dt{
        width:500px;height:440px;
        position:absolute;
        top:0;left:0;
        animation:myfirst 5s ease infinite;
        -moz-animation:myfirst 5s ease infinite; /* Firefox */
        -webkit-animation:myfirst 5s ease infinite; /* Safari and Chrome */
        -o-animation:myfirst 5s ease infinite; /* Opera */
    }
    @keyframes myfirst
    {
        0%   {transform: translate(0px,-20px)}
        50%  {transform: translate(0px,20px)}
        100% {transform: translate(0px,-20px)}
    }

    @-moz-keyframes myfirst /* Firefox */
    {
        0%   {transform: translate(0px,-20px)}
        50%  {transform: translate(0px,20px)}
        100% {transform: translate(0px,-20px)}
    }

    @-webkit-keyframes myfirst /* Safari and Chrome */
    {
        0%   {transform: translate(0px,-20px)}
        50%  {transform: translate(0px,20px)}
        100% {transform: translate(0px,-20px)}
    }

    @-o-keyframes myfirst /* Opera */
    {
        0%   {transform: translate(0px,-20px)}
        50%  {transform: translate(0px,20px)}
        100% {transform: translate(0px,-20px)}
    }
</style>
<body>
<form action="/login" method="post">
<div class='login'>
    <div class='login_title'>
        <span>请登录系统</span><br>
        <span class="erro">${msg}</span>
    </div>
    <div class='login_fields'>
                <div class='login_fields__user'>
                    <div class='icon'>
                        <img alt="" src='images/user_icon_copy.png'>
                    </div>
                    <input type="text" name="a_username" value=""  class="iputs" placeholder='用户名' maxlength="16" type='text' autocomplete="off"/>
                    <div class='validation'>
                        <img alt="" src='images/tick.png'>
                    </div>
                </div>
            <div class='login_fields__password'>
                <div class='icon'>
                    <img alt="" src='images/lock_icon_copy.png'>
                </div>
                <input type="password" name="a_password" value="" class="iputs" placeholder='密码' maxlength="16" autocomplete="off"/>
                <div class='validation'>
                    <img alt="" src='images/tick.png'>
                </div>
            </div>
        <div class='login_fields__submit'>
            <input type="submit" value="登录"/>
        </div>

    </div>
    <div class='success'>
    </div>
    <div class='disclaimer'>
        <p>欢迎登陆学生公寓管理系统</p>
    </div>
</div>
<div style="width:500px;height:550px;position:absolute;top:0;bottom:0;left:10rem;margin:auto;">
    <h2 style="font-size:40px;letter-spacing:8px;height:50px;line-height:50px;text-align:center;margin-bottom:10px;">学生公寓管理系统</h2>
    <div style="position:relative;">
        <img src="images/1.png" alt="" class="dt"/>
    </div>
</div>

<div class='authent'>
    <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
        <div class="loader-inner ball-clip-rotate-multiple">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
</div>
<div class="OverWindows"></div>
</form>
<link href="css/layui.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src='js/stopexecutionontimeout.js'></script>
<script src="js/layui.js" type="text/javascript"></script>
<script src="js/particleground.js" type="text/javascript"></script>
<script src="js/treatment.js" type="text/javascript"></script>
<script src="js/jquery.mockjax.js" type="text/javascript"></script>
<script type="text/javascript">

    $(document).keypress(function(e) {
        // 回车键事件
        if(e.which == 13) {
            $('input[type="button"]').click();
        }
    });
    //粒子背景特效
    $('body').particleground({
        dotColor: '#E8DFE8',
        lineColor: '#133b88'
    });
    $('input[name="pwd"]').focus(function() {
        $(this).attr('type', 'password');
    });
    $('input[type="text"]').focus(function() {
        $(this).prev().animate({
            'opacity': '1'
        }, 200);
    });
    $('input[type="text"],input[type="password"]').blur(function() {
        $(this).prev().animate({
            'opacity': '.5'
        }, 200);
    });
    $('input[name="login"],input[name="pwd"]').keyup(function() {
        var Len = $(this).val().length;
        if(!$(this).val() == '' && Len >= 5) {
            $(this).next().animate({
                'opacity': '1',
                'right': '30'
            }, 200);
        } else {
            $(this).next().animate({
                'opacity': '0',
                'right': '20'
            }, 200);
        }
    });

</script>
</body>
</html>
