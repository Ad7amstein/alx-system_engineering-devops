# Execute a command

exec { 'Kill_killmenow_process':
  command => 'pkill killmenow',
  onlyif  => 'pgrep killmenow',
  path    =>  ['/bin', '/usr/bin'],
}
