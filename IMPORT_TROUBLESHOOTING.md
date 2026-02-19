# Excel Import Troubleshooting Guide

## Quick Fixes Applied

I've made several improvements to help diagnose and fix the import issue:

### 1. Enhanced JavaScript Debugging
- Added console.log statements to track the import process
- Better error messages when file selection fails
- Form validation improvements

### 2. Added CSS Styling for Error Messages
- Error messages now properly display with visual styling
- Success/Error/Warning messages are clearly visible
- Auto-hide after 5 seconds

### 3. Improved PHP Error Logging
- Detailed error logging for debugging
- Better exception handling

## How to Diagnose the Issue

### Step 1: Check Your Filename
Your Excel file **MUST** include a batch year in format `YYYY-YYYY`.

**Examples:**
- ✅ `students_2024-2027.xlsx` - Valid
- ✅ `registered_2023-2026.csv` - Valid
- ✅ `data_2022-2025.xls` - Valid
- ❌ `students.xlsx` - Invalid (no batch year)
- ❌ `import_file.csv` - Invalid (no batch year)
- ❌ `data_2024.xlsx` - Invalid (single year, not range)

### Step 2: Check Browser Console
1. Open the page in your browser
2. Press **F12** to open Developer Tools
3. Go to the **Console** tab
4. Try uploading a file
5. Look for console messages:
   - `validateAndSubmit called` - File picker triggered
   - `File selected: ...` - File was selected successfully
   - `Filename validation passed` - Filename is correct
   - `Submitting form...` - Form is being submitted

**If you see any errors in red, note them down.**

### Step 3: Check PHP Configuration
1. Navigate to: `http://your-domain/placementcell/check_upload_config.php`
2. Check these settings:
   - **upload_max_filesize** - Should be large enough (e.g., 10M or more)
   - **post_max_size** - Should be larger than upload_max_filesize
   - **memory_limit** - Should be adequate (128M or more)
   - **file_uploads** - Must be "Enabled"
3. Test file upload using the form on that page

### Step 4: Verify Excel File Structure
Your Excel file must have these columns (order doesn't matter):

| Required Column | Alternative Names |
|----------------|-------------------|
| Placement ID | UPID, Placement Key ID |
| Program Type | - |
| Program | - |
| Course | - |
| Register Number | reg no, regno, Student Register Number |
| Student Name | name, student name |
| Student Mail ID | email, Student Email ID |
| Student Phone No | mobile, phone, Student Mobile No |
| Percentage | percent, score, cgpa |

**Use the sample template:** `sample_import_template_2024-2027.csv`

### Step 5: Check for Error Messages
After attempting to import:
1. Look for a colored message box at the top of the page
   - **Green box** = Success
   - **Red box** = Error (read the message)
   - **Yellow box** = Warning

2. If no message appears:
   - Check browser console for JavaScript errors
   - Check if form is submitting (Network tab in DevTools)
   - Verify PHP is running (check other pages work)

## Common Issues & Solutions

### Issue 1: "Filename must include batch year"
**Solution:** Rename your file to include `YYYY-YYYY` pattern
- Example: Rename `students.xlsx` to `students_2024-2027.xlsx`

### Issue 2: Nothing happens when clicking "Import Excel File"
**Possible causes:**
1. JavaScript error - Check browser console (F12 → Console)
2. Modal not opening - Try refreshing the page
3. File input not triggering - Check if clicking the label opens file picker

**Solution:**
- Clear browser cache and refresh
- Try a different browser
- Check browser console for errors

### Issue 3: "Missing required column(s)"
**Solution:**
- Download the sample template: `sample_import_template_2024-2027.csv`
- Ensure your Excel file has all required columns
- Column names are flexible (see table in Step 4)
- Don't add extra spaces or special characters in headers

### Issue 4: File uploads but no records inserted
**Possible causes:**
1. Duplicate UPIDs (records already exist)
2. Empty required fields
3. Invalid data format

**Solution:**
- Check the success message for "Inserted: X rows"
- If X = 0, check:
  - UPIDs are unique (not already in database)
  - All required fields have values
  - Email format is valid
  - Phone numbers don't have special characters

### Issue 5: "Upload failed: File exceeds upload_max_filesize"
**Solution:**
1. Check current limit: Visit `check_upload_config.php`
2. Increase PHP limits (ask your hosting provider or edit `php.ini`):
   ```ini
   upload_max_filesize = 20M
   post_max_size = 25M
   memory_limit = 256M
   max_execution_time = 300
   ```
3. Or split your Excel file into smaller files

### Issue 6: "Error reading Excel file"
**Possible causes:**
1. Corrupted Excel file
2. PhpSpreadsheet not installed
3. File format not supported

**Solution:**
- Re-save the Excel file in .xlsx format
- Try saving as .csv instead
- Run: `composer require phpoffice/phpspreadsheet:1.29` in the `placementcell` folder
- Check `check_upload_config.php` to verify PhpSpreadsheet is loaded

## Testing Procedure

1. **Download the sample template:**
   - Location: `placementcell/sample_import_template_2024-2027.csv`
   - This has the correct structure and filename format

2. **Try importing the sample file:**
   - Open Registered Students page
   - Click "Import File" button
   - Select "Import Excel File"
   - Choose the sample CSV file
   - Should see: "Import completed. Inserted: 3 rows."

3. **If sample works:**
   - The system is working correctly
   - Issue is with your Excel file format/content
   - Compare your file structure with the sample

4. **If sample fails:**
   - Check PHP configuration (Step 3 above)
   - Check browser console for JavaScript errors
   - Check PHP error logs
   - Verify database connection

## Getting More Help

If the issue persists:

1. **Collect this information:**
   - Browser console errors (F12 → Console)
   - PHP error logs
   - Screenshot of any error messages
   - Output from `check_upload_config.php`
   - Sample of your Excel file structure (first few rows)

2. **Check PHP error logs:**
   - Location varies by server (ask your hosting provider)
   - Common locations: `/var/log/php_errors.log` or check phpinfo()
   - Look for errors around the time you tried importing

3. **Enable PHP error display temporarily:**
   Add to top of `registered_students.php` (for debugging only):
   ```php
   error_reporting(E_ALL);
   ini_set('display_errors', 1);
   ```
   **Remember to remove this after debugging!**

## Files Modified

The following files were updated to improve debugging:

1. `placementcell/registered_students.php` - Added console logging and better error handling
2. `placementcell/style.css` - Added message box styling (`.msg-success`, `.msg-error`, etc.)
3. `placementcell/check_upload_config.php` - NEW diagnostic tool
4. `placementcell/sample_import_template_2024-2027.csv` - NEW sample template

## Next Steps

1. Try the diagnostic page: `check_upload_config.php`
2. Test with the sample file: `sample_import_template_2024-2027.csv`
3. Open browser console (F12) and watch for errors
4. Check that error messages now appear clearly at the top of the page
5. Verify your filename includes `YYYY-YYYY` pattern

Good luck! The enhanced logging should help identify the exact issue.
