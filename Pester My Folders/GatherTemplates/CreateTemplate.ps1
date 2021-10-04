param (
    [string]$Name,
    [string]$TemplateName,
    [string]$TemplateDescription,
    [string]$BaseFolder
)

$folders = Get-ChildItem $BaseFolder -Directory -Recurse

Split-Path -Path $folders.FullName | Set-Variable "parentPathsToRemove"

$finalResults = $folders.FullName | Where-Object { $parentPathsToRemove -notcontains $_ }

$HostPaths = [PSCustomObject]@{
    Name = $Name
    TemplateName = $TemplateName
    TemplateDescription = $TemplateDescription
    Paths = $finalResults
}

$fileName = $Name + $TemplateName + ".json"

$HostPaths | ConvertTo-Json -Depth 1 | Set-Content -Path .\Templates\$fileName