
# sript to coopy a powershell from shared folder to remote nodes and execute them

#$filePath =  "C:\Users\Desktop\t1.txt"   
$machines = Get-Content C:\Users\Desktop\t1.txt

foreach($machine in $machines)
{
    $job = {
    Copy-Item -Path \\common\auto_install -Destination \\$machine\C$\

    Invoke-Expression C:\NBU_auto_install  #Invoke-Command -ComputerName $machine -ScriptBlock {Get-ChildItem "C:\NBU_auto_install"} -ErrorAction Stop
}

# Invoke-Command -ComputerName $machine -ScriptBlock $job -ArgumentList $machine -ErrorAction SilentlyContinue
    

}
