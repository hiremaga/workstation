dmg_package "Fitbit" do
  source "http://cache.fitbit.com/FitbitConnect/FitbitConnect_Mac_20121109_1.0.0.2286.dmg"
  volumes_dir "Fitbit Connect Installer-v1.0.0.2286-HadronRelease-Release-2012-11-09"
  action :install
  type "pkg"
  package_id "com.fitbit.pkg.GalileoInstaller"
  checksum "23eb71a139368cb1259c9730cfc47adb6eb90fe416c59d2d165b320adef8d922"
end
