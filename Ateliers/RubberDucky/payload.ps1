# 1. Force TLS 1.2 to ensure the connection to GitHub is accepted
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# 2. Keep the original URL
$url = "https://raw.githubusercontent.com/ajuelosemmanuel/Ressources_Colos/main/Ateliers/RubberDucky/okcomputer.png"

# 3. Use the TEMP directory to avoid OneDrive path issues, and use the correct .png extension
$output = "$env:USERPROFILE\Pictures\okcomputer.png"

# 4. Use the modern Invoke-WebRequest instead of the deprecated WebClient
Invoke-WebRequest -Uri $url -OutFile $output

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

# 5. Prevent errors if you run the script twice in the same PowerShell session
if (-not ([System.Management.Automation.PSTypeName]'wallpaper').Type) {
    Add-Type -TypeDefinition $setwallpapersrc
}

# Set the wallpaper
[wallpaper]::SetWallpaper($output)

# 6. Give Windows 2 seconds to process and cache the image before destroying the source file
Start-Sleep -Seconds 2
Remove-Item -Path $output
