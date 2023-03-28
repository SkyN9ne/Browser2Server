
secedit /export /cfg C:\secpol.cfg
(gc C:\secpol.cfg).replace("PasswordComplexity = 1", "PasswordComplexity = 0") | Out-File C:\secpol.cfg
secedit /configure /db C:\WINDOWS\Security\local.sdb /cfg C:\secpol.cfg /areas SECURITYPOLICY
rm -Force C:\secpol.cfg -confirm:$false
