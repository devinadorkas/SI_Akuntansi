<nav class="sidebar sidebar-offcanvas" id="sidebar">
      <ul class="nav">
        <li class="nav-item sidebar-category">
          <p>Navigation</p>
          <span></span>
        </li>
        <<li class="nav-item">
          <a class="nav-link" href="{{url ('/dashboard')}}">
            <i class="mdi mdi-view-quilt menu-icon"></i>
            <span class="menu-title">Dashboard</span>
            <div class="badge badge-info badge-pill">2</div>
          </a>
        </li>
        <li class="nav-item sidebar-category">
          <p>Components</p>
          <span></span>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
            <i class="mdi mdi-palette menu-icon"></i>
            <span class="menu-title">Data Informasi</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="{{url ('/barang')}}">Barang</a></li>
              <li class="nav-item"> <a class="nav-link" href="{{url ('/outlet')}}">Outlet</a></li>
              <li class="nav-item"> <a class="nav-link" href="{{url ('/supplier')}}">Supplier</a></li>
              <li class="nav-item"> <a class="nav-link" href="{{url ('/customer')}}">Customer</a></li>
              <li class="nav-item"> <a class="nav-link" href="{{url ('/pegawai')}}">Pegawai</a></li>
            </ul>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="pages/forms/basic_elements.html">
            <i class="mdi mdi-view-headline menu-icon"></i>
            <span class="menu-title">Data Transaksi</span>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Transaksi Pembelian</a></li>
              <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Detail Transaksi Pembelian</a></li>
              <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Transaksi Penjualan</a></li>
              <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Detail Transaksi Penjualan</a></li>
              <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Invoice</a></li>
            </ul>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="pages/charts/chartjs.html">
            <i class="mdi mdi-chart-pie menu-icon"></i>
            <span class="menu-title">Data Keuangan</span>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Biaya</a></li>
              <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Pengeluaran</a></li>
              <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Transaksi Penjualan</a></li>
              <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Kas Bank</a></li>
              <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Buku Besar</a></li>
            </ul>
          </div>
        </li>
        <li class="nav-item sidebar-category">
          <p>Pages</p>
          <span></span>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
            <i class="mdi mdi-account menu-icon"></i>
            <span class="menu-title">User Pages</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="auth">
          </div>
        </li>
        <li class="nav-item sidebar-category">
          <p>Apps</p>
          <span></span>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="docs/documentation.html">
            <i class="mdi mdi-file-document-box-outline menu-icon"></i>
            <span class="menu-title">Documentation</span>
          </a>
        </li>
      </ul>
    </nav>