<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Report Komoditi</title>
  </head>
  <body>

  <style>
      /* table, th, td {
        border: 1px solid black;
        } */
  </style>

<div class="container">
    <div class="row">
        <div class="col-md-12 text-center">
            <!-- <h1>REKAP RENCANA PANEN DAN REALISASI</h1> -->
            <h1>PENCAPAIAN TARGET</h1>
            <h3>Tanggal <?= dateformat('d-m-Y', 'Y-m-d', $awal) ?> - <?= dateformat('d-m-Y', 'Y-m-d', $akhir) ?></h3>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-md-12">
            <!-- <table class="table" style="border: 1px solid black;"> -->
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">NO</th>
                        <th class="text-center" scope="col">Komoditi</th>
                        <th class="text-center" scope="col">Estimasi Panen - Raw Material (kg)</th>
                        <th class="text-center" scope="col">Realiasi Panen Raw Material (kg)</th>
                        <th class="text-center" scope="col">Hasil Packing (kg)</th>
                        <th class="text-center" scope="col">% Estimasi vs Realisasi</th>
                        <th class="text-center" scope="col">% Waste</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; foreach ($data as $key) : ?>
                        <?php // $perkomod = 0; ?>
                        <tr>
                            <td><?= $i++; ?></td>
                            <td><?= $key['NamaTanaman'] ?></td>
                            <td class="text-center" ><?= $key["estimasi"]; ?>Kg</td>
                            <td class="text-center" ><?= $key["realisasi"]; ?>Kg</td>
                            <td class="text-center" ><?= $key["panen"]; ?>Kg</td>
                            <td class="text-center" ><?= $key["estimasidanrealisasi"]; ?>%</td>
                            <td class="text-center" ><?= 100-$key["waste"]; ?>%</td>

                            <?php // foreach ($key['hasil'] as $key2) : ?>
                                <?php // if ($key2[key($key2)] != 0) : ?>
                                    <!-- <td class="text-center"><?= $key2[key($key2)]; ?></td> -->
                               
                                <?php // endif; ?>
                            <?php // endforeach; ?>
                            <?php // foreach ($key['realisasi'] as $key2) : ?>
                                <?php // if ($key2[key($key2)] != 0) : ?>
                                    <!-- <td class="text-center"><?= $key2[key($key2)]; ?></td> -->
                               
                                <?php // endif; ?>
                            <?php // endforeach; ?>
                            <?php // foreach ($key['packing'] as $key2) : ?>
                                <?php // if ($key2[key($key2)] != 0) : ?>
                                    <!-- <td class="text-center"><?= $key2[key($key2)]; ?></td> -->
                                
                                <?php // endif; ?>
                            <?php // endforeach; ?>
                            <?php // foreach ($key['selisih'] as $key2) : ?>
                                <?php // if ($key2[key($key2)] != 0) : ?>
                                    <!-- <td class="text-center"><?= $key2[key($key2)]; ?>%</td> -->
                                
                                <?php // endif; ?>
                            <?php // endforeach; ?>
                            <?php // foreach ($key['waste'] as $key2) : ?>
                                <?php // if ($key2[key($key2)] != 0) : ?>
                                    <!-- <td class="text-center"><?= $key2[key($key2)]; ?>%</td> -->
                               
                                <?php // endif; ?>
                            <?php // endforeach; ?>
                        </tr>
                    <?php endforeach; ?>
                        <tr>
                            <th></th>
                            <th>Total</th>
                            <th class="text-center" ><?= $total['estimasi']; ?>Kg</th>
                            <th class="text-center" ><?= $total['realisasi']; ?>Kg</th>
                            <th class="text-center" ><?= $total['panen']; ?>Kg</th>
                            <th class="text-center" ><?= $total['estimasidanrealisasi']; ?>%</th>
                            <th class="text-center" ><?= 100-$total['waste']; ?>%</th>
                        </tr>
                </tbody>
            </table>
        </div>
    </div>
    <!-- <div class="row">
        <div class="col-md-12">
            <div style="border-style: solid;">
                <div class="ml-3 mr-3 mt-3 mb-3" style="font-size: 15px;"> -->

                <!-- </div>
            </div>
        </div>
    </div> -->
</div>  

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
        window.print()
    </script>
  </body>
</html>