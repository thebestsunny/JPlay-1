<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" value="IE=9">
    <title>Debugger Sandbox For CommentCoreLibrary</title>


    <!-- CCL -->
    <link rel="stylesheet" href="css/barrage.css" />
    <link rel="stylesheet" href="css/default.css" />
    <script type="text/javascript" src="js/CommentCoreLibrary.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/clappr/latest/clappr.min.js"></script>
    <script type="text/javascript" src="js/level-selector.min.js"></script>
    <script type="text/javascript" src="js/clappr-playback-rate-plugin.min.js"></script>
</head>
<body>
<%--<div id="player-wrapper">--%>
<%--</div>--%>
<div id="debugger">
    <div id="w-main" class="debugger-window" tabindex="0" style="margin-top: 0">
        <div id="player-unit">
            <div class="m20 abp" id="player">
                <div id="c-region" style="display:none;">640x480</div>
                <div id="video">1</div>
                <div id="commentCanvas" class="container"></div>
            </div>
            <div class="barrage-content">
                <label>Input:</label>
                <input type="text" id="input" placeholder="Enter input here">
                <button href="javascript:;" onclick="send()">Send</button>

                <button id="myinit" href="javascript:;" onclick="init()">Init</button>
                <button id="mytest" href="javascript:;" onclick="test()">Test</button>
                <button id="myfetch" href="javascript:;" onclick="fetch()">Fetch</button>
                <button id="mystore" href="javascript:;" onclick="store()">Store</button>
            </div>
        </div>
    </div>
</div>

<script>
//    function parseTimeline(data){
//        data = data.replace('[',"stime:");
//        data = data.replace('|',",ttl:");
//        data = data.replace('/',",dur:");
//        data = data.replace('](',",mode:");
//        data = data.replace(')',",text:");
//        var tmp = data.split(',');
//        for (var it in tmp){
//            tmp[it] = tmp[it].split(':');
//        }
//        alert(tmp);
//        return tmp;
//    }

    function store(){
        var tmr = -1;
        var start = 0;
        var playhead = 0;

//        var jq = jQuery.noConflict();
        $.ajax({
            url : "barrageShowAction.action",
            type : "POST",
            data : "barrageJson=" + JSON.stringify(cm.timeline),
            dataType: "json",
            success:function(data){
                var obj = JSON.parse(data.barrageJson);
//                console.log(obj);
                var timeline = [];
                for (var i in obj){
//                    var tmp = JSON.stringify(obj[i]);
//                    console.log(typeof tmp);
//                    var barr = new CoreComment(cm, obj[i]);
//                    console.log(barr);
//                    var input = {"stime":5000,"mode":tmp.mode,"text":tmp.text,"color":tmp.color};
                    timeline.push(new CoreComment(cm, obj[i]));
                }

                console.log(timeline);
//                cm.init();
                cm.load(obj);
//                cm.time(0);
//                cm.start();
//                console.log("start");
                cm.startTimer();
                $("control-status").className = "status active";
                start = new Date().getTime();
                tmr = setInterval(function(){
                    playhead = new Date().getTime() - start;
                    cm.time(playhead);
//                    displayTime(playhead);
                },42);
            }
        });
    }

    function fetch(){
        var jq = jQuery.noConflict();
        jq.ajax({
            url : "barrageFetchAction.action",
            type : "POST",
            data : "videoId=" + document.getElementById("video"),
            dataType: "json",
            success:function(data){
                cm.load(data.barrageJson);
            }
        });
    }

    function send(){
        var text = document.getElementById("input").value;
        var data = {"text":text,"mode":2,"color":0xff0000}
        cm.send(new ScrollComment(cm, data));
    }

    function test(){
        var data1 = {"stime":5000,"text":"Hello World1","mode":1,"color":0xff0000};
        var data2 = {"stime":6000,"text":"Hello World2","mode":2,"color":0xff0000};
        var data3 = {"stime":7000,"text":"Hello World3","mode":3,"color":0xff0000};
        var data4 = {"stime":8000,"text":"Hello World4","mode":3,"color":0xff0000};
        var data5 = {"stime":9000,"text":"Hello World5","mode":4,"color":0xff0000};
        var data6 = {"stime":10000,"text":"Hello World6","mode":5,"color":0xff0000};

        cm.insert(data1);
        cm.insert(data2);
        cm.insert(data3);
        cm.insert(data4);
        cm.insert(data5);
        cm.insert(data6);
    }

    function init(){
        window.cm = new CommentManager(document.getElementById('commentCanvas'));
        cm.init();

//        var tmr = -1;
//        var start = 0;
//        var playhead = 0;
    }

    window.addEventListener("load", function(){
        init();
    });
</script>
<script type="text/javascript" charset="utf-8">

    var player = new Clappr.Player({
        source: 'videos/LoveLive!The_School_Idol_Movie.mp4',
        parentId: '#commentCanvas',
        plugins: {
            core: [PlaybackRatePlugin]
        },
        playbackRateConfig: {
            defaultValue: '1.0',
            options: [
                {value: '0.5', label: '0.5x'},
                {value: '1.0', label: '1x'},
                {value: '2.0', label: '2x'},
                {value: '4.0', label: '4x'},
            ]
        },
    });

</script>
</body>
</html>
