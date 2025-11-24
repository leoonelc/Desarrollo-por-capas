<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
    <div class="app-brand demo">
        <a href="index.html" class="app-brand-link">
            <span class="app-brand-logo demo"></span>
            <span class="app-brand-text demo menu-text fw-bolder ms-2">UNIANDES</span>
        </a>

        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
    </div>

    <div class="menu-inner-shadow"></div>

    <ul class="menu-inner py-1">

        <!-- Dashboard (si quieres dejarlo) -->
        <li class="menu-item active">
            <a href="../views/home.php" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Analytics">Dashboard</div>
            </a>
        </li>

        <!-- MENU PRINCIPAL -->
        <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-layout"></i>
                <div data-i18n="Layouts">Menu Principal</div>
            </a>

            <ul class="menu-sub">

                <!-- CLIENTES -->
                <li class="menu-item">
                    <a href="clientes/clientes.views.php" target="base" class="menu-link">
                        <?php $_SESSION['rutas'] = 'Clientes'; ?>
                        <div data-i18n="Without navbar">Clientes</div>
                    </a>
                </li>

                <!-- VEHÍCULOS -->
                <li class="menu-item">
                    <a href="vehiculos/vehiculos.views.php" target="base" class="menu-link">
                        <?php $_SESSION['rutas'] = 'Vehículos'; ?>
                        <div data-i18n="Without navbar">Vehículos</div>
                    </a>
                </li>

            </ul>
        </li>
    </ul>
</aside>
