function checkusername()
    {
      var myform = document.getElementById("form1");
      var username = myform.username.value.length;
      if(username < 1||username>12)
      {
        errusername.innerHTML = "<font color='red'>用户名不符合要求</font>";
        return false;
      }else{
        errusername.innerHTML = "<font color='green'>用户名符合要求</font>";
        return true;
      }
    }
    function checkage()
    {
      var myform = document.getElementById("form1");
      var age = myform.age.value;
      if(age != parseInt(age))
      {
        errage.innerHTML = "<font color='red'>年龄不符合要求</font>";
        return false;
      }else{
        errage.innerHTML = "<font color='green'>年龄符合要求</font>";
        return true;
      }
    }
    function checkemail()
    {
      var myform = document.getElementById("form1");
      var mail=/^[A-Za-z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
      if(!mail.test(myform.email.value))
      {  
        erremail.innerHTML = "<font color='red'>email不符合要求</font>";
        return false;
      }else{
        erremail.innerHTML = "<font color='green'>email符合要求</font>";
        return true;
      }
    }
    function checkform()
    {
      checkusername();checkage();checkemail();
      if(checkusername()&&checkage()&&checkemail())
      {
        return true;  
      }else{
        return false;
      }
    }