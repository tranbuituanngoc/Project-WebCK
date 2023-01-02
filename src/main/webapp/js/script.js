function showPass() {
    var x = document.getElementById("pass");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}

function showComPass() {
    var x = document.getElementById("comPass");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}

function showInput() {
    var checkBox = document.getElementById("squaredcheck4");
    if (checkBox.checked == true) {
        document.getElementById('contact-input-diff').style.display = "block";
    } else {
        document.getElementById('contact-input-diff').style.display = "none";
    }
}

function togglecheckboxes(cn) {
    var cbarray = document.getElementsByName(cn);
    var checkBox = document.getElementById("squaredcheck4");
    for (var i = 0; i < cbarray.length; i++) {
        if (cbarray[i].checked === true) {
            cbarray[i].checked = false;
        }
        if (checkBox.checked == true) {
            cbarray[i].disabled = true;
        } else {
            cbarray[i].disabled = false;
        }

    }
}


let changeIcon = function(icon) {
    icon.classList.toggle('fa-solid')
}

function signIn() {
    error = 0;

    email = document.getElementById('email2').value;
    pass = document.getElementById('password2').value;
    error_email = document.getElementById('error_email2');
    error_password = document.getElementById('error_pass');

    if (email.length == 0) {
        error += 1;
        error_email.innerHTML = '<span class="required">Vui lòng không để trống phần email</span>';
    } else {
        error_email.innerHTML = ''
    }
    if (pass.length == 0) {
        error += 1;
        error_password.innerHTML = '<span class="required">Vui lòng không để trống phần mật khẩu</span>';
    } else {
        error_password.innerHTML = ''
    }
    if (error == 0) {
        contactform = document.getElementById('contactform');
        contactform.submit;
    }
}


function signUp() {
    error = 0;
    email = document.getElementById('email1').value;
    pass = document.getElementById('pass').value;
    compass = document.getElementById('comPass').value;
    username = document.getElementById('username').value;
    tel = document.getElementById('tel').value;

    error_username = document.getElementById('error_username');
    error_email1 = document.getElementById('error_email1');
    error_pass = document.getElementById('error_pass');
    error_compass = document.getElementById('error_compass');
    error_tel = document.getElementById('error_tel');

    if (email.length == 0) {
        error += 1;
        error_email1.innerHTML = '<span class="required">Vui lòng không để trống phần email</span>';
    } else {
        error_email1.innerHTML = ''
    }

    if (username.length == 0) {
        error += 1;
        error_username.innerHTML = '<span class="required">Vui lòng không để trống phần tên đăng nhập</span>';
    } else {
        error_username.innerHTML = ''
    }

    if (tel.length == 0) {
        error += 1;
        error_tel.innerHTML = '<span class="required">Vui lòng không để trống phần số điện thoại</span>';
    } else {
        error_tel.innerHTML = ''
    }

    if (pass.length == 0) {
        error += 1;
        error_pass.innerHTML = '<span class="required">Vui lòng không để trống phần mật khẩu</span>';
    } else {
        error_pass.innerHTML = ''
    }

    if (compass.length == 0) {
        error += 1;
        error_compass.innerHTML = '<span class="required">Vui lòng không để trống phần nhập lại mật khẩu</span>';
    } else {
        error_compass.innerHTML = ''
    }

    if (error == 0) {
        signupform = document.getElementById('signupform');
        signupform.submit;
    }
}


function checkComPass() {
    pass = document.getElementById('pass').value;
    compass = document.getElementById('comPass').value;
    error_compass = document.getElementById('error_compass');
    if (pass != compass) {
        error_compass.innerHTML = '<span class="required">Mật khẩu nhập lại chưa đúng</span>';
    } else {
        error_compass.innerHTML = ''
    }

}

//set regex pattern for tel
function regexForTel() {
    tel = document.getElementById('tel').value;
    error_tel = document.getElementById('error_tel');
    var regex = new RegExp("^(0?)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{7}$");
    if (!(regex.test(tel))) {
        error_tel.innerHTML = '<span class="required">Số điện thoại không hợp lệ.</span>';
    } else {
        error_tel.innerHTML = ''
    }
}

//set regex pattern for passwords
function regexForPass() {
    pass = document.getElementById('pass').value;
    var regex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z\d]).{8,}$/gm;
    error_password = document.getElementById('error_pass');
    if (!(pass.match(regex))) {
        error_password.innerHTML = '<span class="required">Mật khẩu phải chứa ít nhất 8 ký tự và phải bao gồm 1 kí tự in hoa, 1 kí tự in thường và 1 chữ số.</span>';
    } else {
        error_password.innerHTML = ''
    }
}

