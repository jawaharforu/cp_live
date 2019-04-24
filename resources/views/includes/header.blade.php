<div class="sidebar">
    <div class="wrapper">

        <nav id="sidebar">

            <div id="dismiss">
                <i class="fa fa-arrow-left"></i>
            </div>

            <div class="sidebar-header">
                <div class="image">
                    <img src="https://via.placeholder.com/60"/>
                </div>
                <div class="details">
                    <h5>{{getUserDetails()->name}}</h5>
                    <a href="/profile">View and edit profile</a>
                </div>
            </div>

            <ul class="list-unstyled components">
                <li>
                    <a class="active" href="/book-appoinment">Live Consultation</a>
                    <a href="#">Virtual Consultation - Free</a>
                    <a href="#">Home Remedies - Free</a>
                    <a href="#">Preventive Medicine</a>
                    <a href="#">Upload Reports</a>
                    <a href="#">Orders Track</a>
                    <a href="#">Pills Reminder</a>
                </li>
            </ul>
        </nav>

        <div id="content">
            <button type="button" id="sidebarCollapse" class="btn btn-info">
                <i class="fas fa-align-left"></i>
                <span>Toggle Sidebar</span>
            </button>
        </div>

    </div>

    <div class="overlay"></div>
</div>
