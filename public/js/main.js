$(document).ready(function () {
    $("#sidebar").mCustomScrollbar({
        theme: "minimal"
    });

    $('#dismiss, .overlay').on('click', function () {
        $('#sidebar').removeClass('active');
        $('.overlay').removeClass('active');
    });

    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').addClass('active');
        $('.overlay').addClass('active');
        $('.collapse.in').toggleClass('in');
        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
    });

});

// initialize Account Kit with CSRF protection
AccountKit_OnInteractive = function () {
    AccountKit.init(
        {
            appId: 2561199993908523,
            state: $('meta[name="_token"]').attr('content'),
            version: "v1.1",
            fbAppEventsEnabled: true,
            redirect: window.location.host + "/register",
            debug: true
        }
    );
};

function loginCallback(response) {
    if (response.status === "PARTIALLY_AUTHENTICATED") {
        document.getElementById("code").value = response.code;
        document.getElementById("csrf").value = response.state;
        document.getElementById("registration_form").submit();
    } else if (response.status === "NOT_AUTHENTICATED") {
        // handle authentication failure
    } else if (response.status === "BAD_PARAMS") {
        // handle bad parameters
    }
}

function smsLogin() {
    var countryCode = document.getElementById("country_code").value;
    var phoneNumber = document.getElementById("mobile").value;
    AccountKit.login(
        'PHONE',
        {countryCode: countryCode, phoneNumber: phoneNumber},
        loginCallback
    );
}

function checkEmail() {
    if ($('#registration_form').valid()) {
        var email = $("[name='email']").val();
        axios.get(site_url + '/api/check_account?email=' + email)
            .then(function (response) {
                smsLogin();
            })
            .catch(function (error) {
                toastr["error"](error.response.data.api_message);
                return false;
            });
    }
}

$(function () {
    toastr.options = {
        "closeButton": false,
        "debug": false,
        "newestOnTop": false,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
});