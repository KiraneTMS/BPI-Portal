$(function(){

    if (location.hostname == "farmerbyte.com" || location.hostname == "staging.farmerbyte.com") {
        baseurl = "https://"+location.hostname+"/"
    } else {
        baseurl = "http://localhost/farmnode/"
    }

    // checker = new Worker("assets/farmnode/notifchecker.js")
    // checker.postMessage("do work")
    // checker.onmessage = function(e){
    //     $("#alertnum").text(e.data)
    // }

    $("#alertnum").text('*')

    function stamptodate(time){
        const milliseconds = time * 1000 // 1575909015000
        // const milliseconds = time 
        const dateObject = new Date(milliseconds)
        return dateObject.toLocaleString()
    }

    $("#alertsDropdown").on("click", function(){
        // console.log($("#alertsDropdown").attr("aria-expanded"))
        if ($("#alertsDropdown").attr("aria-expanded") == "false") {
            var wait = `<div class="row">
                <div class="col-md-6 mx-auto text-center">
                    <img style="max-width: 100px;" src="assets/img/loading.gif" alt="">
                    <p class="">Please Wait</p>
                </div>
            </div>`;
            $("#notif-box").html(wait)
            $.ajax({url: baseurl+"notification/getnotif", dataType: "JSON", success: function(json){
                box = ``;
                for (let i = 0; i < json.length; i++) {
                    // console.log(json[i])
                    waktu = json[i].createdat_notif.split(':')
                    waktu = waktu[0]+':'+waktu[1]
                    box += `<a class="dropdown-item d-flex align-items-center" href="${baseurl+'penanaman/index/'+json[i].data}">
                        <div class="mr-3">
                            <div class="icon-circle ${json[i].type}">
                                <i class="${json[i].icon} text-white"></i>
                            </div>
                        </div>
                        <div>
                            <div class="small text-gray-500">${waktu}</div>
                            <span class="font-weight-bold">${json[i].title}</span><br>
                            <span class="">${json[i].content}</span>
                        </div>
                    </a>`;                    
                }
                $("#notif-box").html(box)
            }})
        } else {
            $("#notif-box").html("")
        }
    })
})

// function showNotification(data={}) {
//     const notification = new Notification("title", {
//         body: "ini body",
//         icon: "https://i.ytimg.com/vi/HlYFW2zaYQM/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBeB-xsRMVpHo7QERKc19787gCjog"
//     })

//     notification.onclick = (e) => {
//         window.location.href = "https://google.com"
//     }
// }

// function getPermission(data) {
//     if (Notification.permission == "granted"){
//         showNotification()
//     } else {
//         Notification.requestPermission()
//     }
// }

// setInterval(function(){
//     getPermission()
// }, 1000)