onmessage = function(e) {
    setInterval(() => {
        postMessage("2")
        // if (Notification.permission != "granted") {
        //     Notification.requestPermission()
        // } else {
        //     new Notification("Farmnode", {
        //         body: "Check new notification!",
        //         icon: "assets/img/logo.png"
        //     })
        // }
    }, 2000);
}