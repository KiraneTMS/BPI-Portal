<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<div class="row" style="height: 100vh;">
    <div class="col-md-6 mx-auto">
        <div class="card">
            <h5 class="card-header">Token Price Poocoin</h5>
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <label for="bnb">BNB Amount</label>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="bnb" value="0.01">
                            <div class="input-group-append">
                                <span class="input-group-text" id="bnb">BNB</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="price">Price Amount</label>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="price" value="0.0001611">
                            <div class="input-group-append">
                                <span class="input-group-text" id="price">USD</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="bnbprice">BNB Price Amount</label>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="bnbprice" value="509">
                            <div class="input-group-append">
                                <span class="input-group-text" id="bnbprice">USD</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="token">Got The Token</label>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="token" placeholder="-" disabled>
                            <div class="input-group-append">
                                <span class="input-group-text" id="token">Token</span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        function count(){
            var bnb = $('#bnb').val();
            var price = $('#price').val();
            var bnbprice = $('#bnbprice').val();
            
            bnbpertoken = price / bnbprice
            token = bnb / bnbpertoken

            $('#token').val(token);
        }
        $('#bnb').on('change', function(){
            count();
        });
        $('#price').on('change', function(){
            count();
        });
        $('#bnbprice').on('change', function(){
            count();
        });

        count()
    });
</script>