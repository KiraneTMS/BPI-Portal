$(function(){ 
    function formatDateRange() { 
        var d = new Date(), 
            month = '' + (d.getMonth() + 1), 
            day = '' + d.getDate(), 
            year = d.getFullYear(); 

        if (month.length < 2)  
            month = '0' + month; 
        if (day.length < 2)  
            day = '0' + day; 

        var r = [day, month, year].join('/') 
        return r+' - '+r; 
    } 

    function getdata(){ 
        // console.log($("#JumlahEstimasi").val()) 
        var date = $("#JumlahEstimasi").val().replaceAll("/",'-').split(" - ") 
        var tanaman = $("#komoditi").find(":selected").val() 
        // console.log(date) 

        $.ajax({url: "<?= base_url("dashboard/getJumlahEstimasi/"); ?>"+date[0]+'/'+date[1]+"/"+tanaman, dataType: "JSON", success: function(json){ 
            // console.log(json) 
            var persen = $("#Rasiogagal").val() 
            if (persen < 0 || persen > 100) { 
                Swal.fire("Error", "Input Rasio % Salah", "error") 
                $("#Rasiogagal").val("0") 
            } 
            var hasil = (persen >= 1 && persen <= 100) ? json.estimasi - (json.estimasi * persen / 100) : json.estimasi 
            $("#PrintJumlahEstimasi").text(hasil+" Kg") 
            $("#PrintJumlahRealisasi").text(json.realisasi+" Kg") 
            $("#PrintJumlahPananBersih").text(json.bersih+" Kg") 
             
            var html = `<option value="" selected>Semua</option>`; 
            for (let i = 0; i < json.tanaman.length; i++) { 
                if (tanaman == json.tanaman[i].id) { 
                    html += `<option value="${json.tanaman[i].id}" selected>${json.tanaman[i].tanaman}</option>`; 
                } else { 
                    html += `<option value="${json.tanaman[i].id}">${json.tanaman[i].tanaman}</option>`; 
                } 
            } 
            $("#komoditi").html(html) 

        }}) 
    } 

    $('input[daterange="true"]').daterangepicker({ 
        multidate: true,
        opens: 'left' 
    }, function(start, end, label) { 
        console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD')); 
    }); 


    // Default Date 
    // 01/01/2018 - 01/15/2018 
    $("#JumlahEstimasi").val(formatDateRange()) 
    getdata() 

    $("#JumlahEstimasi").on("change", function(){ 
        getdata() 
    }) 
    $("#Rasiogagal").on("change", function(){ 
        getdata() 
    }) 
    $("#komoditi").on("change", function(){ 
        getdata() 
    }) 


})