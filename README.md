# Elixir Enum.each with Process.exit

This repository demonstrates an uncommon error in Elixir related to using `Process.exit` within an `Enum.each` loop.  The code abruptly terminates the process if a certain condition is met, potentially leading to incomplete operations and difficult debugging if not handled carefully.

The `bug.ex` file showcases the problematic code, while `bugSolution.ex` provides a corrected version using `Enum.reduce` for better error handling and control flow.