$wsh = new-object -ComObject WScript.Shell

write-host "Pouring a cup of coffee... (keeping you(r pc) awake)"

$remarks = "Taking a sip...", "Taking a sip...", "Taking a sip...", "Taking a sip...", "Taking a sip...", "Taking a sip...", 
"Taking another sip...", "Gulping a sip...", "Pouring more coffee...", "More sips...", "Still drinking coffee...", "Nope, still not tea...", "Wait is this coffee?"

while (1) {
  $wsh.SendKeys('+{F15}')

  $time = get-date -format "HH:mm:ss"
  $remark = get-random $remarks
  write-host "[$time] $remark"

  start-sleep -seconds 59
}