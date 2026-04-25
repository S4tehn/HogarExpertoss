$utf8Bom = New-Object System.Text.UTF8Encoding($true)
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

$files = @(
    "build_hogar_articles.ps1",
    "build_hogar_indexes.ps1",
    "build_hogar_info.ps1"
)

foreach ($f in $files) {
    $path = "c:\Users\S4tehn\Documents\Pagina\$f"
    $content = [System.IO.File]::ReadAllText($path, $utf8NoBom)
    [System.IO.File]::WriteAllText($path, $content, $utf8Bom)
    & "powershell" "-ExecutionPolicy" "Bypass" "-File" $path
}
