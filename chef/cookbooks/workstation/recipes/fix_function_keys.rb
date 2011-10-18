applescript %{
  tell application "System Preferences"
  set current pane to pane "com.apple.preference.keyboard"
  end tell
  tell application "System Events"
  tell application process "System Preferences"
  click radio button "Keyboard" of tab group 1 of window "Keyboard"
  click checkbox "Use all F1, F2, etc. keys as standard function keys" of tab group 1 of window "Keyboard"
  end tell
  quit application "System Preferences"
  end tell
}
