[System.Collections.ArrayList]$script:FunctionsForSBUse = @(
    ${Function:AddWinRMTrustedHost}.Ast.Extent.Text
    ${Function:AddWinRMTrustLocalHost}.Ast.Extent.Text
    ${Function:EnableWinRMViaRPC}.Ast.Extent.Text
    ${Function:GetComputerObjectsInLDAP}.Ast.Extent.Text
    ${Function:GetDomainController}.Ast.Extent.Text
    ${Function:GetDomainName}.Ast.Extent.Text
    ${Function:GetElevation}.Ast.Extent.Text
    ${Function:GetGroupObjectsInLDAP}.Ast.Extent.Text
    ${Function:GetLDAPGroupAndUsers}.Ast.Extent.Text
    ${Function:GetLDAPUserAndGroups}.Ast.Extent.Text
    ${Function:GetModuleDependencies}.Ast.Extent.Text
    ${Function:GetNativePath}.Ast.Extent.Text
    ${Function:GetUserObjectsInLDAP}.Ast.Extent.Text
    ${Function:GetWorkingCredentials}.Ast.Extent.Text
    ${Function:InstallFeatureDism}.Ast.Extent.Text
    ${Function:InvokeModuleDependencies}.Ast.Extent.Text
    ${Function:InvokePSCompatibility}.Ast.Extent.Text
    ${Function:ManualPSGalleryModuleInstall}.Ast.Extent.Text
    ${Function:NewUniqueString}.Ast.Extent.Text
    ${Function:ResolveHost}.Ast.Extent.Text
    ${Function:TestIsValidIPAddress}.Ast.Extent.Text
    ${Function:TestLDAP}.Ast.Extent.Text
    ${Function:TestPort}.Ast.Extent.Text
    ${Function:TestSSH}.Ast.Extent.Text
    ${Function:UnzipFile}.Ast.Extent.Text
    ${Function:Get-CertificateOverview}.Ast.Extent.Text
    ${Function:Get-Certificates}.Ast.Extent.Text
    ${Function:Get-CimPnpEntity}.Ast.Extent.Text
    ${Function:Get-EnvironmentVariables}.Ast.Extent.Text
    ${Function:Get-EventLogSummary}.Ast.Extent.Text
    ${Function:Get-FirewallProfile}.Ast.Extent.Text
    ${Function:Get-FirewallRules}.Ast.Extent.Text
    ${Function:Get-IPRange}.Ast.Extent.Text
    ${Function:Get-LocalGroups}.Ast.Extent.Text
    ${Function:Get-LocalGroupUsers}.Ast.Extent.Text
    ${Function:Get-LocalUserBelongGroups}.Ast.Extent.Text
    ${Function:Get-LocalUsers}.Ast.Extent.Text
    ${Function:Get-Networks}.Ast.Extent.Text
    ${Function:Get-PendingUpdates}.Ast.Extent.Text
    ${Function:Get-Processes}.Ast.Extent.Text
    ${Function:Get-PUDAdminCenter}.Ast.Extent.Text
    ${Function:Get-RegistrySubKeys}.Ast.Extent.Text
    ${Function:Get-RegistryValues}.Ast.Extent.Text
    ${Function:Get-RemoteDesktop}.Ast.Extent.Text
    ${Function:Get-ScheduledTasks}.Ast.Extent.Text
    ${Function:Get-ServerInventory}.Ast.Extent.Text
    ${Function:Get-StorageDisk}.Ast.Extent.Text
    ${Function:Get-StorageFileShare}.Ast.Extent.Text
    ${Function:Get-StorageVolume}.Ast.Extent.Text
    ${Function:Get-WUAHistory}.Ast.Extent.Text
    ${Function:Install-DotNet472}.Ast.Extent.Text
    ${Function:New-EnvironmentVariable}.Ast.Extent.Text
    ${Function:New-Runspace}.Ast.Extent.Text
    ${Function:Remove-EnvironmentVariable}.Ast.Extent.Text
    ${Function:Set-ComputerIdentification}.Ast.Extent.Text
    ${Function:Set-EnvironmentVariable}.Ast.Extent.Text
    ${Function:Set-RemoteDesktop}.Ast.Extent.Text
    ${Function:Start-DiskPerf}.Ast.Extent.Text
    ${Function:Stop-DiskPerf}.Ast.Extent.Text
)

# SIG # Begin signature block
# MIIM3gYJKoZIhvcNAQcCoIIMzzCCDMsCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUbD3bCgC+Zus47yeI0kuaA4PH
# kdCgggpPMIIEKTCCAxGgAwIBAgITRAAAAALGGh0rrvpIiwAAAAAAAjANBgkqhkiG
# 9w0BAQsFADBAMRMwEQYKCZImiZPyLGQBGRYDbGFiMRUwEwYKCZImiZPyLGQBGRYF
# YWxwaGExEjAQBgNVBAMTCUFscGhhREMwMTAeFw0xODExMDYxNTQ2MjhaFw0yMDEx
# MDYxNTU2MjhaMEExEzARBgoJkiaJk/IsZAEZFgNsYWIxFTATBgoJkiaJk/IsZAEZ
# FgVhbHBoYTETMBEGA1UEAxMKQWxwaGFTdWJDQTCCASIwDQYJKoZIhvcNAQEBBQAD
# ggEPADCCAQoCggEBAJ0yJxQZZ7jXPnBuOefihL0ehpBF1zoZpcM30pWneQA/kk9w
# ByX9ISyKWTABstiIu8b2g6lKUjZBM8AOcLPSjl1ZMQkh+qaSQbJFVNeNYllGpjd1
# oOYvSPtr9iPpghVkAFWw9IdOgnd/4XDd4NqlddyR4Qb0g7v3+AMYrqhQCk2VzELp
# 215LEO9sy1EMy7+B29B6P43Rp7ljA9Wc4Hnl+onviFWcIxmIhd0yGdobSxOSDgv5
# SUBfwk+DW03Y9pmJJHCU9hXFFVsPnrfBEvicGrkYx0vA+/O+jh5otex4eR+Tt7eB
# 5VhrfdHKbEkZnBwrJOVz3rURZIu3BsDFSfwNd70CAwEAAaOCARkwggEVMBAGCSsG
# AQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRWBfwwFO+72Ebloy7rHmHnxX3k5DAZBgkr
# BgEEAYI3FAIEDB4KAFMAdQBiAEMAQTAOBgNVHQ8BAf8EBAMCAYYwDwYDVR0TAQH/
# BAUwAwEB/zAfBgNVHSMEGDAWgBTq79v4G/Vf91c0y+vSJBWEI/vmDTA8BgNVHR8E
# NTAzMDGgL6AthitodHRwOi8vcGtpLmFscGhhLmxhYi9jZXJ0ZGF0YS9BbHBoYURD
# MDEuY3JsMEcGCCsGAQUFBwEBBDswOTA3BggrBgEFBQcwAoYraHR0cDovL3BraS5h
# bHBoYS5sYWIvY2VydGRhdGEvQWxwaGFEQzAxLmNydDANBgkqhkiG9w0BAQsFAAOC
# AQEAoE9hHZ0Y5M5tC15cnxVNJa/ILfwRmwCxzPyOAUrdBu4jbSHF2vRsKIJAXFs4
# +mwXqXpLYSUbXF5tfB86OKs2f9L7soln3BXJHj3eEs27htf7RJK1JjPtO8rs3pdn
# h7TbDO3nyjkTcywJioScFZUTdIsQj7TBm3HIQ+/ZSdIWMHlQnYV2kW13XqUZnLhv
# PRjy1NMBG1BAxUrc4bMi1X+mVxoYb/tiB59jakd95wi7ICi2H/07dXoDpi+kAQA1
# ki1/U+cuDhuH7Q8hegt64MlmKD01rO5HODVujuIG1+M5ZkGDeLNKksPHcSJ/DBSn
# KjZca16Sn9No2kLq1q9gD8X/wzCCBh4wggUGoAMCAQICE3AAAAAHhXSIXehTWisA
# AAAAAAcwDQYJKoZIhvcNAQELBQAwQTETMBEGCgmSJomT8ixkARkWA2xhYjEVMBMG
# CgmSJomT8ixkARkWBWFscGhhMRMwEQYDVQQDEwpBbHBoYVN1YkNBMB4XDTE4MTEw
# NzAzMTQyMFoXDTE5MTEwNzAzMTQyMFowTzETMBEGCgmSJomT8ixkARkWA2xhYjEV
# MBMGCgmSJomT8ixkARkWBWFscGhhMQ4wDAYDVQQDEwVVc2VyczERMA8GA1UEAxMI
# YWxwaGFkZXYwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCMUGwGv3p0
# prkDmSUQphU6UvIFQ57NxJFUOSmMZ7SY/nYNDy0iTN26eD0S5J8AQE8B/IGLHUno
# tKFl2AUcQ31hpaSLE1YkThR3WZ4SFUaBMUgKKLc/RQKqE0iNbAfh53N/nnGs6jyu
# 47kyuFRwWE2tZee6b5hh0dbT7YZnahLO7cLWErU4ikWWjEA98TcMK1gaNa5ThBn1
# +4bo9wuxjRKIGpkUJBP/1gq8qeSJnfNelZ34lD0EEirj7/YTzL5YkHMSXTuFMozw
# Av4lXUW/qZ1pAT9rKBalQETxBv9SuC31hU/2EiB4EYYqVFLHglFRogLd7nFZhqa/
# 2O+WdW2LsW9lAgMBAAGjggL/MIIC+zAOBgNVHQ8BAf8EBAMCB4AwHQYDVR0OBBYE
# FMy71rz8tJOXdsGvBt6SIVSKUlrkMB8GA1UdIwQYMBaAFFYF/DAU77vYRuWjLuse
# YefFfeTkMIH3BgNVHR8Ege8wgewwgemggeaggeOGgbJsZGFwOi8vL0NOPUFscGhh
# U3ViQ0EsQ049QWxwaGFTdWJDQSxDTj1DRFAsQ049UHVibGljJTIwS2V5JTIwU2Vy
# dmljZXMsQ049U2VydmljZXMsQ049Q29uZmlndXJhdGlvbixEQz1hbHBoYSxEQz1s
# YWI/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNlP29iamVjdENsYXNzPWNS
# TERpc3RyaWJ1dGlvblBvaW50hixodHRwOi8vcGtpLmFscGhhLmxhYi9jZXJ0ZGF0
# YS9BbHBoYVN1YkNBLmNybDCB9AYIKwYBBQUHAQEEgecwgeQwgacGCCsGAQUFBzAC
# hoGabGRhcDovLy9DTj1BbHBoYVN1YkNBLENOPUFJQSxDTj1QdWJsaWMlMjBLZXkl
# MjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPWFscGhh
# LERDPWxhYj9jQUNlcnRpZmljYXRlP2Jhc2U/b2JqZWN0Q2xhc3M9Y2VydGlmaWNh
# dGlvbkF1dGhvcml0eTA4BggrBgEFBQcwAoYsaHR0cDovL3BraS5hbHBoYS5sYWIv
# Y2VydGRhdGEvQWxwaGFTdWJDQS5jcnQwPQYJKwYBBAGCNxUHBDAwLgYmKwYBBAGC
# NxUIhLycPIHG3hyBiYk0hLvpfobokGRgg9+kPoHDslgCAWQCAQIwHwYDVR0lBBgw
# FgYKKwYBBAGCNwoDDAYIKwYBBQUHAwMwKQYJKwYBBAGCNxUKBBwwGjAMBgorBgEE
# AYI3CgMMMAoGCCsGAQUFBwMDMC0GA1UdEQQmMCSgIgYKKwYBBAGCNxQCA6AUDBJh
# bHBoYWRldkBhbHBoYS5sYWIwDQYJKoZIhvcNAQELBQADggEBAIhV0GPEvq5KwIs+
# DTqLsqHcojMyJhJwrZkEim2XAJfNQFkiDrZzism7lOyXYJol6Bjz1txhos7P194+
# VyBdEZ/Q+r94hrq6SFgC2gCAReDZiy50Au/hTv958QNX/O0OFdIGBxavLqBrWbwu
# yH+RtE9E4LICSPPd0dM/5XE0xtqDMjZcl3pVkqgHpv3O3zgtsTW+FWr4b9lq3rCO
# HxsBGU1w7Eh0LLK8MLqioecr/4B1rPTJkcASXWMU5bllQgQvUmlKW0GIfhC9aM4J
# 04MeJOU1mHLjDcxwWpDD670AFmGRg/mMPxMywvY0HLUszWikcXNYxF1ph+LhlLI9
# f9R1qqkxggH5MIIB9QIBATBYMEExEzARBgoJkiaJk/IsZAEZFgNsYWIxFTATBgoJ
# kiaJk/IsZAEZFgVhbHBoYTETMBEGA1UEAxMKQWxwaGFTdWJDQQITcAAAAAeFdIhd
# 6FNaKwAAAAAABzAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKA
# ADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYK
# KwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQU187CvwYg2B/VnApOIQnzUcciOrEw
# DQYJKoZIhvcNAQEBBQAEggEASPM2V+nU+Unx3u6vBFIcicmy/hKAnsUuQzOgI4yq
# RpZEq0RYUgGXWgtzqMC9MfClkH+UuVdRITcgdj60mE26e1mn7/26j2RocKb0iAeX
# TCni9D7WeqSJzM+m1ZMlNwKS58IfhwppFcKXGBqyJHn7+vEI0Ko3tYiJzpn6Oo/N
# VvVlKH+5RWWvponEEMpMNoNV2PvDh8NsvYr8flALuMcQZHDNCTqpIx94DCAKHLeK
# 49j+44qPc+r5n76nNI3PME9k8MfX29bWEBoEqJ6WVDkZ533IWxllWkIscMBb6NxD
# MFcQ2RnGvdwQNqW1x1ee+/IFe2MZTWLo5f+Rifb7higKXw==
# SIG # End signature block
