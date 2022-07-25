Clear-Host

$wsh = new-object -ComObject WScript.Shell

write-host "Pouring a cup of coffee... (keeping you(r pc) awake)"
write-host "Exit with CTRL+C `n"

$remarks = "Taking a sip...", "Taking a sip...", "Taking a sip...", "Taking a sip...", "Taking a sip...", "Taking a sip...", 
"Taking another sip...", "Gulping a sip...", "Pouring more coffee...", "More sips...", "Still drinking coffee...", "Nope, still not tea...", "Wait is this coffee?"
$max = 25

while (1) {
  $wsh.SendKeys('+{F15}')

  $remark = get-random $remarks

  for (($i = 0); $i -lt 30; $i++) {
    $progress = "[$("#" * $i)$("." * (29 - $i) )] $remark $(" " * ($max - $remark.length))"
    write-host -nonewline "`r$progress"
    start-sleep -seconds 2
  }  
}