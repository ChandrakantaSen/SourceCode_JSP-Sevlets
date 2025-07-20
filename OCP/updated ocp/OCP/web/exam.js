function qset(c)
{
    document.getElementById("q").innerHTML = questions[c].QUEST;
    document.getElementById("optionA").innerHTML = questions[c].OPT_A;
    document.getElementById("optionB").innerHTML = questions[c].OPT_B;
    document.getElementById("optionC").innerHTML = questions[c].OPT_C;
    document.getElementById("optionD").innerHTML = questions[c].OPT_D;
    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("blue");
    if (questions[cursor].ANS == "")
    {
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("white");
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.add("red");
    }
    if (questions[cursor].STATUS == "savenext")
    {
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("blue");
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.add("green");
    }
    if (questions[cursor].STATUS == "review")
    {
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("blue");
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.add("orange");
    }
    cursor = c;
    if (questions[cursor].STATUS == "" || questions[cursor].STATUS == "skip")            // null string and zero are same in JS [ "" == 0 ]
    {
        document.getElementById("qform").reset();

    }
    else if (questions[cursor].STATUS == "review" || questions[cursor].STATUS == "savenext")
    {
        var v = document.getElementsByName('ans');
        v[questions[cursor].ANS].checked = true;
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("green");
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("orange");
    }

    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.add("blue");

}
function qunset(c)
{
    document.getElementById("qubutn_" + (parseInt(c) + 1).toString()).classList.remove("blue");
    if (questions[c].ANS == "")
    {
        document.getElementById("qubutn_" + (parseInt(c) + 1).toString()).classList.remove("white");
        document.getElementById("qubutn_" + (parseInt(c) + 1).toString()).classList.add("red");
    }

}
function gonext()
{
    var len = Object.keys(questions).length;
    if (cursor < parseInt(len)) {
        var selected = document.getElementsByName('ans');
        for (var i = 0; i < selected.length; i++) {
            questions[cursor].ANS = "";
            if (selected[i].checked) {
                if (i == 0)
                    questions[cursor].ANS = "A";
                else if (i == 1)
                    questions[cursor].ANS = "B";
                else if (i == 2)
                    questions[cursor].ANS = "C";
                else if (i == 3)
                    questions[cursor].ANS = "D";

                if (questions[cursor].STATUS != "review")
                {
                    questions[cursor].STATUS = "savenext";
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("white");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("blue");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("orange");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("red");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.add("green");
                }
                else
                {
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("white");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("blue");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("green");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("red");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.add("orange");
                }
                cursor = cursor + 1;
                qset(cursor);
            }
        }

    }
}
function revw()
{
    var len = Object.keys(questions).length;
    if (cursor < parseInt(len)) {
        var selected = document.getElementsByName('ans');
        for (var i = 0; i < selected.length; i++) {
            if (selected[i].checked) {
                if (questions[cursor].STATUS != "review")
                {
                    questions[cursor].ANS = i;
                    questions[cursor].STATUS = "review";
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("white");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("blue");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("green");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("red");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.add("orange");
                }
                else if (questions[cursor].STATUS == "review")
                {
                    questions[cursor].STATUS = "savenext";
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("white");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("blue");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("orange");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("red");
                    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.add("green");
                }
            }
        }
    }
}
function skp()
{
    if (questions[cursor].ANS == "")
    {
        questions[cursor].STATUS = "skip";
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("white");
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("blue");
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("green");
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("orange");
        document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.add("red");
    }
    cursor = cursor + 1;
    qset(cursor);
}
function rem_ans()
{
    questions[cursor].STATUS = "skip";
    questions[cursor].ANS = "";
    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("white");
    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("blue");
    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("green");
    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.remove("orange");
    document.getElementById("qubutn_" + (parseInt(cursor) + 1).toString()).classList.add("red");
    cursor = cursor + 1;
    qset(cursor);
}
function pad(num, size) {
    var s = num + "";
    while (s.length < size)
        s = "0" + s;
    return s;
}

function callback(response)
{
    document.getElementById("main").innerHTML = response;
}
function postData(url, data, callback)
{

    var request = new XMLHttpRequest();
    request.open("POST", url);
    request.onreadystatechange = function() {
        if (request.readyState == 4 && callback)
            callback(request.responseText);
    };
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");           //"Content-Type","application/x-www-form-urlencoded"
    //alert(data[0].QNO.toString());
    var resp_string = "";
    for (var i = 0; i < Object.keys(data).length; i++)
    {
        resp_string = resp_string + i.toString() + "=" + data[i].ANS + "&";
    }
    alert(resp_string);
    request.send(resp_string); 				//request.getParameterMap() Gets whole POST data without necessity of knowing the keys
}


window.onload = function() {
    setInterval(function() {
        if (ss > 0) {
            ss = ss - 1;
        }
        else if (ss == 0) {
            ss = 59;
            if (mm > 0) {
                mm = mm - 1;
            }
            else if (mm == 0) {
                mm = 59;
                if (hh > 0) {
                    hh = hh - 1;
                }
                else if (hh == 0) {
                    //End exam
                    postData('afterlogin.jsp', questions, callback);
                }
            }
        }
        document.getElementById("clock").innerHTML = "Time remaining: " + pad(hh, 2) + ":" + pad(mm, 2) + ":" + pad(ss, 2);
    }, 1000);
    document.getElementById("q").innerHTML = questions[0].QUEST;
    document.getElementById("optionA").innerHTML = questions[0].OPT_A
    document.getElementById("optionB").innerHTML = questions[0].OPT_B;
    document.getElementById("optionC").innerHTML = questions[0].OPT_C;
    document.getElementById("optionD").innerHTML = questions[0].OPT_D;
    document.getElementById("next").addEventListener("click", gonext, false);
    document.getElementById("review").addEventListener("click", revw, false);
    document.getElementById("skip").addEventListener("click", skp, false);
    document.getElementById("rem_ans_btn").addEventListener("click", rem_ans, false);

}
