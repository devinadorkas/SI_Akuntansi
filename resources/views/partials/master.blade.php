<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>SI Akuntansi : Data Barang</title>
  <!-- base:css -->
  <link rel="stylesheet" href="{{asset ('style/template/vendors/mdi/css/materialdesignicons.min.css')}}">
  <link rel="stylesheet" href="{{asset ('style/template/vendors/css/vendor.bundle.base.css')}}">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="{{asset ('style/template/css/style.css')}}">
  <!-- endinject -->
  <link rel="shortcut icon" href="{{asset ('style/template/images/favicon.png')}}" />
</head>
<body>
  <div class="container-scroller d-flex">
    <div class="row p-0 m-0 proBanner" id="proBanner">
      <div class="col-md-12 p-0 m-0">
        <div class="card-body card-body-padding d-flex align-items-center justify-content-between">
          <div class="ps-lg-1">
          </div>
        </div>
      </div>
    </div>
    <!-- partial:./partials/_sidebar.html -->
    @include('partials.sidebar')
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:./partials/_navbar.html -->
      @include('partials.navbar')
      <!-- table -->
      <div class="content">
        @yield('content')
      </div>
      
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <footer class="footer">
          <div class="card">
            <div class="card-body">
            </div>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="{{asset ('style/template/vendors/js/vendor.bundle.base.js')}}"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="{{asset ('style/template/js/off-canvas.js')}}"></script>
  <script src="{{asset ('style/template/js/hoverable-collapse.js')}}"></script>
  <script src="{{asset ('style/template/js/template.js')}}"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="{{asset ('style/template/js/file-upload.js')}}"></script>
  <!-- End custom js for this page-->
</body>

</html>
