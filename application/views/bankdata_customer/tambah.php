<?= flashdata('msg') ?>
<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Tambah Data</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="NumberCard">NumberCard</label>
                                <input class="form-control" type="text" name="NumberCard" id="NumberCard" placeholder="NumberCard" value="<?= set_value("NumberCard"); ?>">
                                <?= form_error("NumberCard", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Bank">Bank</label>
                                <input class="form-control" type="text" name="Bank" id="Bank" placeholder="Bank" value="<?= set_value("Bank"); ?>">
                                <?= form_error("Bank", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="TypeCard">TypeCard</label>
                                <input class="form-control" type="text" name="TypeCard" id="TypeCard" placeholder="TypeCard" value="<?= set_value("TypeCard"); ?>">
                                <?= form_error("TypeCard", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="NameCustomer">NameCustomer</label>
                                <input class="form-control" type="text" name="NameCustomer" id="NameCustomer" placeholder="NameCustomer" value="<?= set_value("NameCustomer"); ?>">
                                <?= form_error("NameCustomer", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="PIC">PIC</label>
                                <input class="form-control" type="text" name="PIC" id="PIC" placeholder="PIC" value="<?= set_value("PIC"); ?>">
                                <?= form_error("PIC", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="AssignmentDate">AssignmentDate</label>
                                <input class="form-control" type="text" name="AssignmentDate" id="AssignmentDate" placeholder="AssignmentDate" value="<?= set_value("AssignmentDate"); ?>">
                                <?= form_error("AssignmentDate", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="ExpireDate">ExpireDate</label>
                                <input class="form-control" type="text" name="ExpireDate" id="ExpireDate" placeholder="ExpireDate" value="<?= set_value("ExpireDate"); ?>">
                                <?= form_error("ExpireDate", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="DateOfBirth">DateOfBirth</label>
                                <input class="form-control" type="text" name="DateOfBirth" id="DateOfBirth" placeholder="DateOfBirth" value="<?= set_value("DateOfBirth"); ?>">
                                <?= form_error("DateOfBirth", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OpenDate">OpenDate</label>
                                <input class="form-control" type="text" name="OpenDate" id="OpenDate" placeholder="OpenDate" value="<?= set_value("OpenDate"); ?>">
                                <?= form_error("OpenDate", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="WODate">WODate</label>
                                <input class="form-control" type="text" name="WODate" id="WODate" placeholder="WODate" value="<?= set_value("WODate"); ?>">
                                <?= form_error("WODate", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="LastPayDate">LastPayDate</label>
                                <input class="form-control" type="text" name="LastPayDate" id="LastPayDate" placeholder="LastPayDate" value="<?= set_value("LastPayDate"); ?>">
                                <?= form_error("LastPayDate", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="LastTransactionDate">LastTransactionDate</label>
                                <input class="form-control" type="text" name="LastTransactionDate" id="LastTransactionDate" placeholder="LastTransactionDate" value="<?= set_value("LastTransactionDate"); ?>">
                                <?= form_error("LastTransactionDate", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="LastPayment">LastPayment</label>
                                <input class="form-control" type="text" name="LastPayment" id="LastPayment" placeholder="LastPayment" value="<?= set_value("LastPayment"); ?>">
                                <?= form_error("LastPayment", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="LastTransactionNominal">LastTransactionNominal</label>
                                <input class="form-control" type="text" name="LastTransactionNominal" id="LastTransactionNominal" placeholder="LastTransactionNominal" value="<?= set_value("LastTransactionNominal"); ?>">
                                <?= form_error("LastTransactionNominal", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Limit">Limit</label>
                                <input class="form-control" type="text" name="Limit" id="Limit" placeholder="Limit" value="<?= set_value("Limit"); ?>">
                                <?= form_error("Limit", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Principal">Principal</label>
                                <input class="form-control" type="text" name="Principal" id="Principal" placeholder="Principal" value="<?= set_value("Principal"); ?>">
                                <?= form_error("Principal", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="MinPay">MinPay</label>
                                <input class="form-control" type="text" name="MinPay" id="MinPay" placeholder="MinPay" value="<?= set_value("MinPay"); ?>">
                                <?= form_error("MinPay", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OSBalance">OSBalance</label>
                                <input class="form-control" type="text" name="OSBalance" id="OSBalance" placeholder="OSBalance" value="<?= set_value("OSBalance"); ?>">
                                <?= form_error("OSBalance", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Address1">Address1</label>
                                <input class="form-control" type="text" name="Address1" id="Address1" placeholder="Address1" value="<?= set_value("Address1"); ?>">
                                <?= form_error("Address1", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Address2">Address2</label>
                                <input class="form-control" type="text" name="Address2" id="Address2" placeholder="Address2" value="<?= set_value("Address2"); ?>">
                                <?= form_error("Address2", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Address3">Address3</label>
                                <input class="form-control" type="text" name="Address3" id="Address3" placeholder="Address3" value="<?= set_value("Address3"); ?>">
                                <?= form_error("Address3", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Address4">Address4</label>
                                <input class="form-control" type="text" name="Address4" id="Address4" placeholder="Address4" value="<?= set_value("Address4"); ?>">
                                <?= form_error("Address4", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="City">City</label>
                                <input class="form-control" type="text" name="City" id="City" placeholder="City" value="<?= set_value("City"); ?>">
                                <?= form_error("City", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OfficeName">OfficeName</label>
                                <input class="form-control" type="text" name="OfficeName" id="OfficeName" placeholder="OfficeName" value="<?= set_value("OfficeName"); ?>">
                                <?= form_error("OfficeName", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OfficeAddress1">OfficeAddress1</label>
                                <input class="form-control" type="text" name="OfficeAddress1" id="OfficeAddress1" placeholder="OfficeAddress1" value="<?= set_value("OfficeAddress1"); ?>">
                                <?= form_error("OfficeAddress1", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OfficeAddress2">OfficeAddress2</label>
                                <input class="form-control" type="text" name="OfficeAddress2" id="OfficeAddress2" placeholder="OfficeAddress2" value="<?= set_value("OfficeAddress2"); ?>">
                                <?= form_error("OfficeAddress2", '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="OfficeAddress3">OfficeAddress3</label>
                                <input class="form-control" type="text" name="OfficeAddress3" id="OfficeAddress3" placeholder="OfficeAddress3" value="<?= set_value("OfficeAddress3"); ?>">
                                <?= form_error("OfficeAddress3", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OfficeAddress4">OfficeAddress4</label>
                                <input class="form-control" type="text" name="OfficeAddress4" id="OfficeAddress4" placeholder="OfficeAddress4" value="<?= set_value("OfficeAddress4"); ?>">
                                <?= form_error("OfficeAddress4", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Phone1">Phone1</label>
                                <input class="form-control" type="text" name="Phone1" id="Phone1" placeholder="Phone1" value="<?= set_value("Phone1"); ?>">
                                <?= form_error("Phone1", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Phone2">Phone2</label>
                                <input class="form-control" type="text" name="Phone2" id="Phone2" placeholder="Phone2" value="<?= set_value("Phone2"); ?>">
                                <?= form_error("Phone2", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="HomePhone1">HomePhone1</label>
                                <input class="form-control" type="text" name="HomePhone1" id="HomePhone1" placeholder="HomePhone1" value="<?= set_value("HomePhone1"); ?>">
                                <?= form_error("HomePhone1", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="HomePhone2">HomePhone2</label>
                                <input class="form-control" type="text" name="HomePhone2" id="HomePhone2" placeholder="HomePhone2" value="<?= set_value("HomePhone2"); ?>">
                                <?= form_error("HomePhone2", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OfficePhone1">OfficePhone1</label>
                                <input class="form-control" type="text" name="OfficePhone1" id="OfficePhone1" placeholder="OfficePhone1" value="<?= set_value("OfficePhone1"); ?>">
                                <?= form_error("OfficePhone1", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OfficePhone2">OfficePhone2</label>
                                <input class="form-control" type="text" name="OfficePhone2" id="OfficePhone2" placeholder="OfficePhone2" value="<?= set_value("OfficePhone2"); ?>">
                                <?= form_error("OfficePhone2", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="ECPhone1">ECPhone1</label>
                                <input class="form-control" type="text" name="ECPhone1" id="ECPhone1" placeholder="ECPhone1" value="<?= set_value("ECPhone1"); ?>">
                                <?= form_error("ECPhone1", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="ECPhone2">ECPhone2</label>
                                <input class="form-control" type="text" name="ECPhone2" id="ECPhone2" placeholder="ECPhone2" value="<?= set_value("ECPhone2"); ?>">
                                <?= form_error("ECPhone2", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OtherNumber">OtherNumber</label>
                                <input class="form-control" type="text" name="OtherNumber" id="OtherNumber" placeholder="OtherNumber" value="<?= set_value("OtherNumber"); ?>">
                                <?= form_error("OtherNumber", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="ECName">ECName</label>
                                <input class="form-control" type="text" name="ECName" id="ECName" placeholder="ECName" value="<?= set_value("ECName"); ?>">
                                <?= form_error("ECName", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="ECName2">ECName2</label>
                                <input class="form-control" type="text" name="ECName2" id="ECName2" placeholder="ECName2" value="<?= set_value("ECName2"); ?>">
                                <?= form_error("ECName2", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="StatusEC">StatusEC</label>
                                <input class="form-control" type="text" name="StatusEC" id="StatusEC" placeholder="StatusEC" value="<?= set_value("StatusEC"); ?>">
                                <?= form_error("StatusEC", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="StatusEC2">StatusEC2</label>
                                <input class="form-control" type="text" name="StatusEC2" id="StatusEC2" placeholder="StatusEC2" value="<?= set_value("StatusEC2"); ?>">
                                <?= form_error("StatusEC2", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="MotherName">MotherName</label>
                                <input class="form-control" type="text" name="MotherName" id="MotherName" placeholder="MotherName" value="<?= set_value("MotherName"); ?>">
                                <?= form_error("MotherName", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Sex">Sex</label>
                                <input class="form-control" type="text" name="Sex" id="Sex" placeholder="Sex" value="<?= set_value("Sex"); ?>">
                                <?= form_error("Sex", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Email">Email</label>
                                <input class="form-control" type="text" name="Email" id="Email" placeholder="Email" value="<?= set_value("Email"); ?>">
                                <?= form_error("Email", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="VirtualAccount">VirtualAccount</label>
                                <input class="form-control" type="text" name="VirtualAccount" id="VirtualAccount" placeholder="VirtualAccount" value="<?= set_value("VirtualAccount"); ?>">
                                <?= form_error("VirtualAccount", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="VirtualAccountName">VirtualAccountName</label>
                                <input class="form-control" type="text" name="VirtualAccountName" id="VirtualAccountName" placeholder="VirtualAccountName" value="<?= set_value("VirtualAccountName"); ?>">
                                <?= form_error("VirtualAccountName", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Komoditi">Komoditi</label>
                                <input class="form-control" type="text" name="Komoditi" id="Komoditi" placeholder="Komoditi" value="<?= set_value("Komoditi"); ?>">
                                <?= form_error("Komoditi", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="KomoditiType">KomoditiType</label>
                                <input class="form-control" type="text" name="KomoditiType" id="KomoditiType" placeholder="KomoditiType" value="<?= set_value("KomoditiType"); ?>">
                                <?= form_error("KomoditiType", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Produsen">Produsen</label>
                                <input class="form-control" type="text" name="Produsen" id="Produsen" placeholder="Produsen" value="<?= set_value("Produsen"); ?>">
                                <?= form_error("Produsen", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Model">Model</label>
                                <input class="form-control" type="text" name="Model" id="Model" placeholder="Model" value="<?= set_value("Model"); ?>">
                                <?= form_error("Model", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="LoanTerm">LoanTerm</label>
                                <input class="form-control" type="text" name="LoanTerm" id="LoanTerm" placeholder="LoanTerm" value="<?= set_value("LoanTerm"); ?>">
                                <?= form_error("LoanTerm", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="InstallmentAlreadyPaid">InstallmentAlreadyPaid</label>
                                <input class="form-control" type="text" name="InstallmentAlreadyPaid" id="InstallmentAlreadyPaid" placeholder="InstallmentAlreadyPaid" value="<?= set_value("InstallmentAlreadyPaid"); ?>">
                                <?= form_error("InstallmentAlreadyPaid", '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="MonthlyPaymentNominal">MonthlyPaymentNominal</label>
                                <input class="form-control" type="text" name="MonthlyPaymentNominal" id="MonthlyPaymentNominal" placeholder="MonthlyPaymentNominal" value="<?= set_value("MonthlyPaymentNominal"); ?>">
                                <?= form_error("MonthlyPaymentNominal", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="DPD">DPD</label>
                                <input class="form-control" type="text" name="DPD" id="DPD" placeholder="DPD" value="<?= set_value("DPD"); ?>">
                                <?= form_error("DPD", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Bucket">Bucket</label>
                                <input class="form-control" type="text" name="Bucket" id="Bucket" placeholder="Bucket" value="<?= set_value("Bucket"); ?>">
                                <?= form_error("Bucket", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="BillingNoPenalty">BillingNoPenalty</label>
                                <input class="form-control" type="text" name="BillingNoPenalty" id="BillingNoPenalty" placeholder="BillingNoPenalty" value="<?= set_value("BillingNoPenalty"); ?>">
                                <?= form_error("BillingNoPenalty", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="DendaBelumDibayar">DendaBelumDibayar</label>
                                <input class="form-control" type="text" name="DendaBelumDibayar" id="DendaBelumDibayar" placeholder="DendaBelumDibayar" value="<?= set_value("DendaBelumDibayar"); ?>">
                                <?= form_error("DendaBelumDibayar", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="LastVisitDate">LastVisitDate</label>
                                <input class="form-control" type="text" name="LastVisitDate" id="LastVisitDate" placeholder="LastVisitDate" value="<?= set_value("LastVisitDate"); ?>">
                                <?= form_error("LastVisitDate", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="LastVisitResult">LastVisitResult</label>
                                <input class="form-control" type="text" name="LastVisitResult" id="LastVisitResult" placeholder="LastVisitResult" value="<?= set_value("LastVisitResult"); ?>">
                                <?= form_error("LastVisitResult", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="LastReport">LastReport</label>
                                <input class="form-control" type="text" name="LastReport" id="LastReport" placeholder="LastReport" value="<?= set_value("LastReport"); ?>">
                                <?= form_error("LastReport", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="LastVisitAddress">LastVisitAddress</label>
                                <input class="form-control" type="text" name="LastVisitAddress" id="LastVisitAddress" placeholder="LastVisitAddress" value="<?= set_value("LastVisitAddress"); ?>">
                                <?= form_error("LastVisitAddress", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OTSOffer">OTSOffer</label>
                                <input class="form-control" type="text" name="OTSOffer" id="OTSOffer" placeholder="OTSOffer" value="<?= set_value("OTSOffer"); ?>">
                                <?= form_error("OTSOffer", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OtherData1">OtherData1</label>
                                <input class="form-control" type="text" name="OtherData1" id="OtherData1" placeholder="OtherData1" value="<?= set_value("OtherData1"); ?>">
                                <?= form_error("OtherData1", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OtherData2">OtherData2</label>
                                <input class="form-control" type="text" name="OtherData2" id="OtherData2" placeholder="OtherData2" value="<?= set_value("OtherData2"); ?>">
                                <?= form_error("OtherData2", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OtherData3">OtherData3</label>
                                <input class="form-control" type="text" name="OtherData3" id="OtherData3" placeholder="OtherData3" value="<?= set_value("OtherData3"); ?>">
                                <?= form_error("OtherData3", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OtherData4">OtherData4</label>
                                <input class="form-control" type="text" name="OtherData4" id="OtherData4" placeholder="OtherData4" value="<?= set_value("OtherData4"); ?>">
                                <?= form_error("OtherData4", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="OtherData5">OtherData5</label>
                                <input class="form-control" type="text" name="OtherData5" id="OtherData5" placeholder="OtherData5" value="<?= set_value("OtherData5"); ?>">
                                <?= form_error("OtherData5", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="PermanentMessage">PermanentMessage</label>
                                <input class="form-control" type="text" name="PermanentMessage" id="PermanentMessage" placeholder="PermanentMessage" value="<?= set_value("PermanentMessage"); ?>">
                                <?= form_error("PermanentMessage", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Deskcoll_id">Deskcoll_id</label>
                                <input class="form-control" type="text" name="Deskcoll_id" id="Deskcoll_id" placeholder="Deskcoll_id" value="<?= set_value("Deskcoll_id"); ?>">
                                <?= form_error("Deskcoll_id", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="IsDeletedByAdmin">IsDeletedByAdmin</label>
                                <input class="form-control" type="text" name="IsDeletedByAdmin" id="IsDeletedByAdmin" placeholder="IsDeletedByAdmin" value="<?= set_value("IsDeletedByAdmin"); ?>">
                                <?= form_error("IsDeletedByAdmin", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Report">Report</label>
                                <input class="form-control" type="text" name="Report" id="Report" placeholder="Report" value="<?= set_value("Report"); ?>">
                                <?= form_error("Report", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="Action">Action</label>
                                <input class="form-control" type="text" name="Action" id="Action" placeholder="Action" value="<?= set_value("Action"); ?>">
                                <?= form_error("Action", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="ReportDate">ReportDate</label>
                                <input class="form-control" type="text" name="ReportDate" id="ReportDate" placeholder="ReportDate" value="<?= set_value("ReportDate"); ?>">
                                <?= form_error("ReportDate", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="PTPDate">PTPDate</label>
                                <input class="form-control" type="text" name="PTPDate" id="PTPDate" placeholder="PTPDate" value="<?= set_value("PTPDate"); ?>">
                                <?= form_error("PTPDate", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="PTPAmount">PTPAmount</label>
                                <input class="form-control" type="text" name="PTPAmount" id="PTPAmount" placeholder="PTPAmount" value="<?= set_value("PTPAmount"); ?>">
                                <?= form_error("PTPAmount", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="PaidDate">PaidDate</label>
                                <input class="form-control" type="text" name="PaidDate" id="PaidDate" placeholder="PaidDate" value="<?= set_value("PaidDate"); ?>">
                                <?= form_error("PaidDate", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="PaidAmount">PaidAmount</label>
                                <input class="form-control" type="text" name="PaidAmount" id="PaidAmount" placeholder="PaidAmount" value="<?= set_value("PaidAmount"); ?>">
                                <?= form_error("PaidAmount", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <!-- <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="status_divisi" id="status_divisi" value="1" <?= (set_value('status_divisi') == '1') ? 'checked' : '' ?>>
                                    <label class="form-check-label" for="status_divisi">
                                        Aktif
                                    </label>
                                </div>
                            </div> -->
                        </div>
                    </div>
                    <?php if (check_rule(false, "is_create")) : ?>
                        <button type="submit" class="btn btn-dark w-100">Submit</button>
                    <?php endif; ?>
                </form>
            </div>
        </div>
    </div>
</div>