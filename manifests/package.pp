class newrelic::package {
    include yum::repo::newrelic

    package { "newrelic-sysmond":
        ensure  => latest,
        notify  => Class["newrelic::server"],
        require => Class["yum::repo::newrelic"];
    }
}
