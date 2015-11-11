@echo off

if "%NETCF_PATH%" == "" ( set "NETCF_PATH=C:\Program Files\Microsoft.NET\SDK\CompactFramework\v3.5\WindowsCE" )

if DEFINED REF ( set REF= )

set REF=%REF% "/r:%NETCF_PATH%\MsCorlib.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.Core.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.Data.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.Drawing.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.Messaging.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.Net.IrDA.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.Web.Services.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.Windows.Forms.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.ServiceModel.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.Runtime.Serialization.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.Xml.dll"
set REF=%REF% "/r:%NETCF_PATH%\System.Xml.Linq.dll"
set REF=%REF% "/r:%NETCF_PATH%\Microsoft.WindowsCE.Forms.dll"
set REF=%REF% "/r:%NETCF_PATH%\Microsoft.WindowsMobile.DirectX.dll"
set REF=%REF% "/r:%NETCF_PATH%\Microsoft.ServiceModel.Channels.Mail.dll"
set REF=%REF% "/r:%NETCF_PATH%\Microsoft.ServiceModel.Channels.Mail.WindowsMobile.dll"

rem :compile

csc -nostdlib -noconfig %REF% %*