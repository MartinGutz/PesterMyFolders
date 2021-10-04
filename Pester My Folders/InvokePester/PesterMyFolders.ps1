$files = Get-ChildItem -Path .\Templates\*.json 

foreach($file in $files) 
{
    $content = Get-Content $file | ConvertFrom-Json 
    Describe "Checking if Folder Exists for $($content.TestTemplate)" {
        It "Checking on the  <_> " -ForEach $content.Paths {
            $path = $_
            Test-Path $path | Should -Be $true
        }
    }
}
