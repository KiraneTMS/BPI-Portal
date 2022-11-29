                </div>
                <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; FarmerByte 2022</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

                </div>
                <!-- End of Content Wrapper -->

                </div>
                <!-- End of Page Wrapper -->

                <!-- Scroll to Top Button-->
                <a class="scroll-to-top rounded" href="#page-top">
                    <i class="fas fa-angle-up"></i>
                </a>

                <!-- Confirm Delete Modal -->
                <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5>Apakah Anda Yakin?</h5>
                            </div>
                            <div class="modal-body">
                                Data Akan Dihapus Secara Permanent!
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                <a class="btn btn-danger btn-ok">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    $('#confirm-delete').on('show.bs.modal', function(e) {
                        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
                    });
                </script>

                <!-- Confirm Delete Modal Sementara -->
                <div class="modal fade" id="confirm-delete-temp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5>Apakah Anda Yakin?</h5>
                            </div>
                            <div class="modal-body">
                                Data Akan Dihapus !
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                <a class="btn btn-danger btn-ok">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    $('#confirm-delete-temp').on('show.bs.modal', function(e) {
                        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
                    });
                </script>

                <!-- Logout Modal-->
                <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Yakin untuk keluar?</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">Pilih "Keluar" di bawah jika Anda siap untuk mengakhiri sesi Anda saat ini.</div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                                <a class="btn btn-primary" href="<?= base_url("auth/logout") ?>">Keluar</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Bootstrap core JavaScript-->

                <!-- <script src="<?= base_url("assets/sbadmin/") ?>vendor/jquery/jquery.min.js"></script> -->
                <script src="<?= base_url("assets/sbadmin/") ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

                <!-- Core plugin JavaScript-->
                <!-- <script src="<?= base_url("assets/sbadmin/") ?>vendor/jquery-easing/jquery.easing.min.js"></script> -->

                <!-- Custom scripts for all pages-->
                <script src="<?= base_url("assets/sbadmin/") ?>js/sb-admin-2.min.js"></script>
                <script>
                    $('.custom-file-input').on('change', function() {
                        let filename = $(this).val().split('\\').pop();
                        $(this).next('.custom-file-label').addClass("selected").html(filename);
                    });

                    // $(document).ready(function () {
                    //     $('.selectize').selectize({
                    //         sortField: 'text'
                    //     });
                    // });
                </script>
                <script>
                    $('.summernote').summernote({
                        placeholder: 'Tulis disini...',
                        tabsize: 2,
                        height: 300
                    });
                </script>

                <!-- Latest compiled and minified JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>

                <!-- (Optional) Latest compiled and minified JavaScript translation files -->
                <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/i18n/defaults-*.min.js"></script> -->


                <!-- Page level plugins -->
                <!-- <script src="<?= base_url("assets/sbadmin/") ?>vendor/chart.js/Chart.min.js"></script> -->

                <!-- Page level custom scripts -->
                <!-- <script src="<?= base_url("assets/sbadmin/") ?>js/demo/chart-area-demo.js"></script>
    <script src="<?= base_url("assets/sbadmin/") ?>js/demo/chart-pie-demo.js"></script> -->
                <script src="<?= base_url("assets/farmnode/") ?>notifworker.js"></script>

                </body>

                </html>