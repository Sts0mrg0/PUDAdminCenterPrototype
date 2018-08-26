<#
    
    .SYNOPSIS
        Gets the local users.
    
    .DESCRIPTION
        Gets the local users. The supported Operating Systems are
        Window Server 2012, Windows Server 2012R2, Windows Server 2016.

    .NOTES
        This function is pulled directly from the real Microsoft Windows Admin Center

        PowerShell scripts use rights (according to Microsoft):
        We grant you a non-exclusive, royalty-free right to use, modify, reproduce, and distribute the scripts provided herein.

        ANY SCRIPTS PROVIDED BY MICROSOFT ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED,
        INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS OR A PARTICULAR PURPOSE.
    
    .ROLE
        Readers
    
#>
function Get-LocalUsers {
    param (
        [Parameter(Mandatory = $false)]
        [String]
        $SID
    )
    
    $isWinServer2016OrNewer = [Environment]::OSVersion.Version.Major -ge 10;
    # ADSI does NOT support 2016 Nano, meanwhile New-LocalUser, Get-LocalUser, Set-LocalUser do NOT support downlevel
    if ($SID)
    {
        if ($isWinServer2016OrNewer)
        {
            Get-LocalUser -SID $SID | Microsoft.PowerShell.Utility\Select-Object @(
                "AccountExpires",
                "Description",
                "Enabled",
                "FullName",
                "LastLogon",
                "Name",
                "ObjectClass",
                "PasswordChangeableDate",
                "PasswordExpires",
                "PasswordLastSet",
                "PasswordRequired",
                "SID",
                "UserMayChangePassword"
            ) | foreach {
                AccountExpires          = $_.AccountExpires
                Description             = $_.Description
                Enabled                 = $_.Enabled
                FullName                = $_.FullName
                LastLogon               = $_.LastLogon
                Name                    = $_.Name
                GroupMembership         = Get-LocalUserBelongGroups -UserName $_.Name
                ObjectClass             = $_.ObjectClass
                PasswordChangeableDate  = $_.PasswordChangeableDate
                PasswordExpires         = $_.PasswordExpires
                PasswordLastSet         = $_.PasswordLastSet
                PasswordRequired        = $_.PasswordRequired
                SID                     = $_.SID.Value
                UserMayChangePassword   = $_.UserMayChangePassword
            }
        }
        else
        {
            Get-WmiObject -Class Win32_UserAccount -Filter "LocalAccount='True' AND SID='$SID'" | Microsoft.PowerShell.Utility\Select-Object @(
                "AccountExpirationDate",
                "Description",
                "Disabled"
                "FullName",
                "LastLogon",
                "Name",
                "ObjectClass",
                "PasswordChangeableDate",
                "PasswordExpires",
                "PasswordLastSet",
                "PasswordRequired",
                "SID",
                "PasswordChangeable"
            ) | foreach {
                AccountExpires          = $_.AccountExpirationDate
                Description             = $_.Description
                Enabled                 = !$_.Disabled
                FullName                = $_.FullName
                LastLogon               = $_.LastLogon
                Name                    = $_.Name
                GroupMembership         = Get-LocalUserBelongGroups -UserName $_.Name
                ObjectClass             = $_.ObjectClass
                PasswordChangeableDate  = $_.PasswordChangeableDate
                PasswordExpires         = $_.PasswordExpires
                PasswordLastSet         = $_.PasswordLastSet
                PasswordRequired        = $_.PasswordRequired
                SID                     = $_.SID.Value
                UserMayChangePassword   = $_.PasswordChangeable
            }
        }
    }
    else
    {
        if ($isWinServer2016OrNewer)
        {
            Get-LocalUser | Microsoft.PowerShell.Utility\Select-Object @(
                "AccountExpires",
                "Description",
                "Enabled",
                "FullName",
                "LastLogon",
                "Name",
                "ObjectClass",
                "PasswordChangeableDate",
                "PasswordExpires",
                "PasswordLastSet",
                "PasswordRequired",
                "SID",
                "UserMayChangePassword"
            ) | foreach {
                AccountExpires          = $_.AccountExpires
                Description             = $_.Description
                Enabled                 = $_.Enabled
                FullName                = $_.FullName
                LastLogon               = $_.LastLogon
                Name                    = $_.Name
                GroupMembership         = Get-LocalUserBelongGroups -UserName $_.Name
                ObjectClass             = $_.ObjectClass
                PasswordChangeableDate  = $_.PasswordChangeableDate
                PasswordExpires         = $_.PasswordExpires
                PasswordLastSet         = $_.PasswordLastSet
                PasswordRequired        = $_.PasswordRequired
                SID                     = $_.SID.Value
                UserMayChangePassword   = $_.UserMayChangePassword
            }
        }
        else
        {
            Get-WmiObject -Class Win32_UserAccount -Filter "LocalAccount='True'" | Microsoft.PowerShell.Utility\Select-Object @(
                "AccountExpirationDate",
                "Description",
                "Disabled"
                "FullName",
                "LastLogon",
                "Name",
                "ObjectClass",
                "PasswordChangeableDate",
                "PasswordExpires",
                "PasswordLastSet",
                "PasswordRequired",
                "SID",
                "PasswordChangeable"
            ) | foreach {
                AccountExpires          = $_.AccountExpirationDate
                Description             = $_.Description
                Enabled                 = !$_.Disabled
                FullName                = $_.FullName
                LastLogon               = $_.LastLogon
                Name                    = $_.Name
                GroupMembership         = Get-LocalUserBelongGroups -UserName $_.Name
                ObjectClass             = $_.ObjectClass
                PasswordChangeableDate  = $_.PasswordChangeableDate
                PasswordExpires         = $_.PasswordExpires
                PasswordLastSet         = $_.PasswordLastSet
                PasswordRequired        = $_.PasswordRequired
                SID                     = $_.SID.Value
                UserMayChangePassword   = $_.PasswordChangeable
            }
        }
    }    
}

# SIG # Begin signature block
# MIIMiAYJKoZIhvcNAQcCoIIMeTCCDHUCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUfF7cJnVxfBkp9yeKk0jD4v72
# k+Ogggn9MIIEJjCCAw6gAwIBAgITawAAAB/Nnq77QGja+wAAAAAAHzANBgkqhkiG
# 9w0BAQsFADAwMQwwCgYDVQQGEwNMQUIxDTALBgNVBAoTBFpFUk8xETAPBgNVBAMT
# CFplcm9EQzAxMB4XDTE3MDkyMDIxMDM1OFoXDTE5MDkyMDIxMTM1OFowPTETMBEG
# CgmSJomT8ixkARkWA0xBQjEUMBIGCgmSJomT8ixkARkWBFpFUk8xEDAOBgNVBAMT
# B1plcm9TQ0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDCwqv+ROc1
# bpJmKx+8rPUUfT3kPSUYeDxY8GXU2RrWcL5TSZ6AVJsvNpj+7d94OEmPZate7h4d
# gJnhCSyh2/3v0BHBdgPzLcveLpxPiSWpTnqSWlLUW2NMFRRojZRscdA+e+9QotOB
# aZmnLDrlePQe5W7S1CxbVu+W0H5/ukte5h6gsKa0ktNJ6X9nOPiGBMn1LcZV/Ksl
# lUyuTc7KKYydYjbSSv2rQ4qmZCQHqxyNWVub1IiEP7ClqCYqeCdsTtfw4Y3WKxDI
# JaPmWzlHNs0nkEjvnAJhsRdLFbvY5C2KJIenxR0gA79U8Xd6+cZanrBUNbUC8GCN
# wYkYp4A4Jx+9AgMBAAGjggEqMIIBJjASBgkrBgEEAYI3FQEEBQIDAQABMCMGCSsG
# AQQBgjcVAgQWBBQ/0jsn2LS8aZiDw0omqt9+KWpj3DAdBgNVHQ4EFgQUicLX4r2C
# Kn0Zf5NYut8n7bkyhf4wGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwDgYDVR0P
# AQH/BAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAUdpW6phL2RQNF
# 7AZBgQV4tgr7OE0wMQYDVR0fBCowKDAmoCSgIoYgaHR0cDovL3BraS9jZXJ0ZGF0
# YS9aZXJvREMwMS5jcmwwPAYIKwYBBQUHAQEEMDAuMCwGCCsGAQUFBzAChiBodHRw
# Oi8vcGtpL2NlcnRkYXRhL1plcm9EQzAxLmNydDANBgkqhkiG9w0BAQsFAAOCAQEA
# tyX7aHk8vUM2WTQKINtrHKJJi29HaxhPaHrNZ0c32H70YZoFFaryM0GMowEaDbj0
# a3ShBuQWfW7bD7Z4DmNc5Q6cp7JeDKSZHwe5JWFGrl7DlSFSab/+a0GQgtG05dXW
# YVQsrwgfTDRXkmpLQxvSxAbxKiGrnuS+kaYmzRVDYWSZHwHFNgxeZ/La9/8FdCir
# MXdJEAGzG+9TwO9JvJSyoGTzu7n93IQp6QteRlaYVemd5/fYqBhtskk1zDiv9edk
# mHHpRWf9Xo94ZPEy7BqmDuixm4LdmmzIcFWqGGMo51hvzz0EaE8K5HuNvNaUB/hq
# MTOIB5145K8bFOoKHO4LkTCCBc8wggS3oAMCAQICE1gAAAH5oOvjAv3166MAAQAA
# AfkwDQYJKoZIhvcNAQELBQAwPTETMBEGCgmSJomT8ixkARkWA0xBQjEUMBIGCgmS
# JomT8ixkARkWBFpFUk8xEDAOBgNVBAMTB1plcm9TQ0EwHhcNMTcwOTIwMjE0MTIy
# WhcNMTkwOTIwMjExMzU4WjBpMQswCQYDVQQGEwJVUzELMAkGA1UECBMCUEExFTAT
# BgNVBAcTDFBoaWxhZGVscGhpYTEVMBMGA1UEChMMRGlNYWdnaW8gSW5jMQswCQYD
# VQQLEwJJVDESMBAGA1UEAxMJWmVyb0NvZGUyMIIBIjANBgkqhkiG9w0BAQEFAAOC
# AQ8AMIIBCgKCAQEAxX0+4yas6xfiaNVVVZJB2aRK+gS3iEMLx8wMF3kLJYLJyR+l
# rcGF/x3gMxcvkKJQouLuChjh2+i7Ra1aO37ch3X3KDMZIoWrSzbbvqdBlwax7Gsm
# BdLH9HZimSMCVgux0IfkClvnOlrc7Wpv1jqgvseRku5YKnNm1JD+91JDp/hBWRxR
# 3Qg2OR667FJd1Q/5FWwAdrzoQbFUuvAyeVl7TNW0n1XUHRgq9+ZYawb+fxl1ruTj
# 3MoktaLVzFKWqeHPKvgUTTnXvEbLh9RzX1eApZfTJmnUjBcl1tCQbSzLYkfJlJO6
# eRUHZwojUK+TkidfklU2SpgvyJm2DhCtssFWiQIDAQABo4ICmjCCApYwDgYDVR0P
# AQH/BAQDAgeAMBMGA1UdJQQMMAoGCCsGAQUFBwMDMB0GA1UdDgQWBBS5d2bhatXq
# eUDFo9KltQWHthbPKzAfBgNVHSMEGDAWgBSJwtfivYIqfRl/k1i63yftuTKF/jCB
# 6QYDVR0fBIHhMIHeMIHboIHYoIHVhoGubGRhcDovLy9DTj1aZXJvU0NBKDEpLENO
# PVplcm9TQ0EsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNl
# cnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9emVybyxEQz1sYWI/Y2VydGlmaWNh
# dGVSZXZvY2F0aW9uTGlzdD9iYXNlP29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlv
# blBvaW50hiJodHRwOi8vcGtpL2NlcnRkYXRhL1plcm9TQ0EoMSkuY3JsMIHmBggr
# BgEFBQcBAQSB2TCB1jCBowYIKwYBBQUHMAKGgZZsZGFwOi8vL0NOPVplcm9TQ0Es
# Q049QUlBLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENO
# PUNvbmZpZ3VyYXRpb24sREM9emVybyxEQz1sYWI/Y0FDZXJ0aWZpY2F0ZT9iYXNl
# P29iamVjdENsYXNzPWNlcnRpZmljYXRpb25BdXRob3JpdHkwLgYIKwYBBQUHMAKG
# Imh0dHA6Ly9wa2kvY2VydGRhdGEvWmVyb1NDQSgxKS5jcnQwPQYJKwYBBAGCNxUH
# BDAwLgYmKwYBBAGCNxUIg7j0P4Sb8nmD8Y84g7C3MobRzXiBJ6HzzB+P2VUCAWQC
# AQUwGwYJKwYBBAGCNxUKBA4wDDAKBggrBgEFBQcDAzANBgkqhkiG9w0BAQsFAAOC
# AQEAszRRF+YTPhd9UbkJZy/pZQIqTjpXLpbhxWzs1ECTwtIbJPiI4dhAVAjrzkGj
# DyXYWmpnNsyk19qE82AX75G9FLESfHbtesUXnrhbnsov4/D/qmXk/1KD9CE0lQHF
# Lu2DvOsdf2mp2pjdeBgKMRuy4cZ0VCc/myO7uy7dq0CvVdXRsQC6Fqtr7yob9NbE
# OdUYDBAGrt5ZAkw5YeL8H9E3JLGXtE7ir3ksT6Ki1mont2epJfHkO5JkmOI6XVtg
# anuOGbo62885BOiXLu5+H2Fg+8ueTP40zFhfLh3e3Kj6Lm/NdovqqTBAsk04tFW9
# Hp4gWfVc0gTDwok3rHOrfIY35TGCAfUwggHxAgEBMFQwPTETMBEGCgmSJomT8ixk
# ARkWA0xBQjEUMBIGCgmSJomT8ixkARkWBFpFUk8xEDAOBgNVBAMTB1plcm9TQ0EC
# E1gAAAH5oOvjAv3166MAAQAAAfkwCQYFKw4DAhoFAKB4MBgGCisGAQQBgjcCAQwx
# CjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGC
# NwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcNAQkEMRYEFAVufklGHOQY3iDP
# Zrwx9LKBfrGLMA0GCSqGSIb3DQEBAQUABIIBAEuh+XY7jPFTjCKV0lHd7vHfrQY+
# k9iWeOoEJL/i6THuK2r43z4mLEDb1Xm71i05CZg2vfeqDwRhPRDfYtBngpVxlrlv
# pEPfiidViWQH/iXZMA8y7xdEp6adEvsQugXZPmXrDK5wun2SEJE3mGbZj0+cFcYv
# DUJGJacsm2pJd4HNwWconmGPQpM3Ih3KBubWc9G90VhJVQAmwt+whmhs+KP5ldFi
# 15KD4MtA9J9ufHTUE1BhrtBfpw6lLNKx8BEAvWXbLnMVhMvVEowhVkXdITuirl5/
# u8reEOTJxtMClpnj+UhjxSbqnSmsoggcAcu44Mn2Mqb4OH5d3V7ZOVKKbCQ=
# SIG # End signature block
