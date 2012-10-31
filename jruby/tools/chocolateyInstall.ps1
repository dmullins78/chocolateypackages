$binRoot = "$env:systemdrive\"
if($env:chocolatey_bin_root -ne $null){$binRoot = join-path $env:systemdrive $env:chocolatey_bin_root}

$jrubyFolder = '1.6.4'
$jrubyPath = join-path $binRoot $('jruby-' + "$jrubyFolder")

$silentArgs = "-q -dir `"$jrubyPath`""

Install-ChocolateyPackage "jruby" "exe" "$silentArgs" "http://jruby.org.s3.amazonaws.com/downloads/1.6.4/jruby_windowsjre_1_6_4.exe" "http://jruby.org.s3.amazonaws.com/downloads/1.6.4/jruby_windows_x64_jre_1_6_4.exe"