class newrelic($license  = $::newrelic_license) {
    include yum::repo::newrelic
    include newrelic::package
    include newrelic::server
}
