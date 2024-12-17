# PowerShell DNS Lookup Script

## Overview

This PowerShell script automates the process of reading IP addresses from an Excel file, performing DNS lookups to retrieve corresponding hostnames, and exporting the results back to a new Excel file. If the DNS lookup fails for any IP address, it will record `"No value"` as the hostname.

## Prerequisites

Before running the script, ensure you have the following:

- **PowerShell**: Ensure PowerShell is installed on your system (version 5.1 or higher).
- **ImportExcel Module**: The script uses the `Import-Excel` and `Export-Excel` cmdlets from the `ImportExcel` module. To install the module, run the following command in PowerShell:
  ```powershell
  Install-Module -Name ImportExcel -Force -Scope CurrentUser
