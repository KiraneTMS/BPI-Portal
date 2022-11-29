<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Add Config Data</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="state">State</label>
                                <div class="input-group">
                                    <select class="custom-select" id="state" name="state">
                                        <option value="a" selected>Choose...</option>
                                        <option value="1" <?= (set_value('state') == '1') ? "selected":""; ?>>Buy</option>
                                        <option value="1" <?= (set_value('state') == '2') ? "selected":""; ?>>Sell</option>
                                    </select>
                                </div>
                                <?= form_error("state", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="id_wallet">Wallet</label>
                                <div class="input-group">
                                    <select class="custom-select" id="id_wallet" name="id_wallet">
                                        <option value="a" selected>Choose...</option>
                                        <?php foreach($wallet as $key): ?>
                                            <?php if (set_value('id_wallet') == $key['id_address']) : ?>
                                                <option value="<?= $key['id_address'] ?>" selected><?= $key['name']; ?></option>
                                            <?php else: ?>
                                                <option value="<?= $key['id_address'] ?>"><?= $key['name']; ?></option>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                                <?= form_error("id_wallet", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="token_address">Token Address</label>
                                <div class="input-group">
                                    <input class="form-control" type="text" name="token_address" id="token_address" placeholder="Masukan Token Address" value="<?= set_value("token_address"); ?>">
                                    <!-- <div class="input-group-append">
                                        <label class="input-group-text" for="token_address" id="symb">-</label>
                                    </div> -->
                                </div>
                                <?= form_error("token_address", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="reserve_read">Reserve Read</label>
                                <input class="form-control" type="number" name="reserve_read" id="reserve_read" placeholder="Masukan Reserve Read" value="<?= set_value("reserve_read"); ?>">
                                <?= form_error("reserve_read", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="trigger_value">Trigger Value</label>
                                <input class="form-control" type="text" name="trigger_value" id="trigger_value" placeholder="Masukan Trigger Value" value="<?= set_value("trigger_value"); ?>">
                                <?= form_error("trigger_value", '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="reward_low">Reward Low</label>
                                <input class="form-control" type="text" name="reward_low" id="reward_low" placeholder="Masukan Reward Low" value="<?= set_value("reward_low"); ?>">
                                <?= form_error("reward_low", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="reward_high">Reward High</label>
                                <input class="form-control" type="text" name="reward_high" id="reward_high" placeholder="Masukan Reward High" value="<?= set_value("reward_high"); ?>">
                                <?= form_error("reward_high", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="gas_price">Gas Price</label>
                                <input class="form-control" type="text" name="gas_price" id="gas_price" placeholder="Masukan Gas Price" value="<?= (set_value("gas_price")) ? set_value("gas_price") : "9"; ?>">
                                <?= form_error("gas_price", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="gas_limit">Gas Limit</label>
                                <input class="form-control" type="text" name="gas_limit" id="gas_limit" placeholder="Masukan Gas Limit" value="<?= (set_value("gas_limit")) ? set_value("gas_limit") : "500000"; ?>">
                                <?= form_error("gas_limit", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="slipage">Slipage</label>
                                <input class="form-control" type="text" name="slipage" id="slipage" placeholder="Masukan Slipage" value="<?= (set_value("slipage")) ? set_value("slipage") : "30"; ?>">
                                <?= form_error("slipage", '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>