#!/bin/bash
type_screenshot_run() {
  option_type_screenshot=area
}

copy_save_editor_run() {
  option_chosen=copy
}

# Execute Command
run_cmd() {
  type_screenshot_run
  copy_save_editor_run "takescreenshot"
}
