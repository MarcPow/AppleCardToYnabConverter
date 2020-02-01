Param(
    [string]$AppleCsv,
    [string]$YnabCsv
)

$csv = Import-Csv $AppleCsv;
$ynabTable = $csv | Select-Object @{ expression={$_.'Transaction Date'}; Name='Date' },@{ expression={$_.'Merchant'}; Name='Payee' },@{ expression={$_.'Description'}; Name='Memo' },@{ expression={-1 * $_.'Amount (USD)'}; Name='Amount' };
$ynabTable | Export-Csv -NoTypeInformation -Path $YnabCsv 