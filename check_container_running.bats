#!/usr/bin/env bats
# BATS is https://github.com/sstephenson/bats

@test "invoking without a parameter prints an error" {
  run ./check_container_running
  [[ "$output" = "ERROR: parameter must be image regex" ]]
}

@test "invoking without a parameter exits 63" {
  run ./check_container_running
  [ "$status" -eq 63 ]
}
