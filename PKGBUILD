
pkgname='battery_log'
pkgver='0.0.2'
pkgrel='2'
arch=('any')
depends=('systemd' 'coreutils')
optdepends=('gnuplot')
source=('battery_log.sh' 'battery_log.service' 'battery_log.timer' 'battery_log_chart')
md5sums=('9d3271d1d593d66d6339fb46fa58422c'
         '3380646272c4591bdf33843280bc2343'
         '4dbdc3f14f34faf624e2eb3d53d3ec51'
         '3a379a3d304c3a311f1ad8cb652597de')

package() {
  install -Dm755 battery_log.sh $pkgdir/usr/lib/systemd/system/scripts/battery_log
  install -Dm644 battery_log.service $pkgdir/usr/lib/systemd/system/battery_log.service
  install -Dm644 battery_log.timer $pkgdir/usr/lib/systemd/system/battery_log.timer
  install -Dm755 battery_log_chart $pkgdir/usr/bin/battery_log_chart
}
