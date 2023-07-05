$url = "https://cadenaser00.epimg.net/ser/imagenes/2017/09/08/gente/1504852962_952336_1504855721_noticia_normal.jpg"
$output = "C:\Users\$env:USERNAME\Desktop\bigup.jpg"
(New-Object System.Net.WebClient).DownloadFile($url, $output)
$setwallpapersrc = @"
using System.Runtime.InteropServices;
public class wallpaper
{
public const int SetDesktopWallpaper = 20;
public const int UpdateIniFile = 0x01;
public const int SendWinIniChange = 0x02;
[DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
private static extern int SystemParametersInfo (int uAction, int uParam, string lpvParam, int fuWinIni);
public static void SetWallpaper ( string path )
{
SystemParametersInfo( SetDesktopWallpaper, 0, path, UpdateIniFile | SendWinIniChange );
}
}
"@
Add-Type -TypeDefinition $setwallpapersrc
[wallpaper]::SetWallpaper($output)
