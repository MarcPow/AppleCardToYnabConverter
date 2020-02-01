# Who's this for?

This script is for You Need a Budget (YNAB) users who would like to import their Apple Card transactions in bulk.

# How do I use it?
1. Export your data to CSV from Apple
   - Go to your card in the Wallet App
   - Click on your balance
   - Click on a statement
   - Scroll to the bottom and hit 'Export to CSV'
2. E-mail the data to yourself.
   - You'll see a screen with all your transactions.
   - Share it to the Mail app, and then send it to yourself.
3. Run Powershell
    - On Windows, this is powershell.exe
    - On Linux, this is pwsh
4. From the prompt, invoke the script on each of your files.
   - PS C:\Users\bob\git\Budget> .\Prepare-Data-Ynab.ps1 -AppleCsv 'C:\Users\bob\Downloads\Apple Card Transactions - November 2019.csv' -YnabCsv YnabAppleNovember.csv
   - PS C:\Users\bob\git\Budget> .\Prepare-Data-Ynab.ps1 -AppleCsv 'C:\Users\bob\Downloads\Apple Card Transactions - December 2019.csv' -YnabCsv .\YnabAppleDecember.csv
   - PS C:\Users\bob\git\Budget> .\Prepare-Data-Ynab.ps1 -AppleCsv 'C:\Users\bob\Downloads\Apple Card Transactions - January 2020.csv' -YnabCsv .\YnabAppleJanuary.csv
5. Import into YNAB as normal.
