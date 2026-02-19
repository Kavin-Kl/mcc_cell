# 🔧 Complete Fix Instructions for Placement System Issues

## Issues to Fix:
1. ❌ Hired count showing 0 in company progress tracker
2. ❌ Duplicate students in reports (1305 vs 1295)
3. ❌ Resume files showing 404 errors
4. ❌ JD links not showing for some drives
5. ❌ Logout not working in student dashboard
6. ❌ Pending applications card should be removed

## ✅ Step-by-Step Fix Process

### Step 1: Run SQL Fix Script (CRITICAL)
1. Open **phpMyAdmin** in your browser
2. Select your placement database
3. Go to the **SQL** tab
4. Open the file `fix_all_issues.sql` and copy all contents
5. Paste into SQL tab and click **Go**
6. Review the results - you should see counts and verification queries

### Step 2: Run PHP Diagnostic Tool
1. Open browser and navigate to: `http://your-domain/placementcell/diagnose_and_fix.php`
2. This will:
   - Sync placed_students table
   - Fix resume file paths
   - Show hired counts for all drives
   - Identify missing JDs and forms
3. Review the results and follow any additional instructions

### Step 3: Fix Resume Files
1. Navigate to: `http://your-domain/placementcell/fix_resume_paths.php`
2. This will:
   - Find resume files in old `uploads/` directory
   - Move them to `uploads/resumes/`
   - Update database paths
3. Check the summary to see how many were fixed

### Step 4: Clear All Caches
1. **Browser Cache**: Press `Ctrl + F5` (or `Cmd + Shift + R` on Mac)
2. **PHP Cache** (if applicable): Restart Apache/Nginx or run:
   ```bash
   # On your server
   service apache2 restart
   # OR
   service nginx restart
   ```

### Step 5: Verify Each Fix

#### A. Check Hired Counts
1. Go to Dashboard
2. Look at each drive card
3. The "Hired" count should now show correct numbers
4. If still 0, check if:
   - Applications table has `status='placed'` for those students
   - Run: `SELECT * FROM applications WHERE drive_id=XX AND status='placed'`

#### B. Check Student Count
1. Go to Registered Students page
2. The total should match across all views
3. No duplicate rows should appear

#### C. Check Resume Links
1. Go to any application page
2. Click on resume links
3. They should open correctly (not 404)

#### D. Check Logout
1. Log in as a student
2. Click the logout icon (always visible now)
3. Should redirect to login page
4. Try accessing student dashboard - should redirect to login

#### E. Check Dashboard Cards
1. Student dashboard should show only 3 cards:
   - Total Applications
   - Placements
   - Active Drives
2. No "Pending Applications" card

#### F. Check JD Links
1. Go to Dashboard
2. For each drive, check if "View JD" link appears
3. If missing, it means the drive has no JD uploaded
4. To add JD: Edit Drive → Upload JD file or add JD link

## 🔍 Troubleshooting

### Issue: Hired count still shows 0
**Solution:**
1. Check if applications exist: `SELECT COUNT(*) FROM applications WHERE drive_id=XX AND status='placed'`
2. If 0, students haven't been marked as placed yet
3. If >0 but placed_students is empty, run: `diagnose_and_fix.php` again
4. Check if `drive_id` and `role_id` match between tables

### Issue: Students still duplicating
**Solution:**
1. Make sure `registered_students.php` has `GROUP BY s.student_id` (around line 244)
2. Check if students table itself has duplicates: `SELECT student_id, COUNT(*) FROM students GROUP BY student_id HAVING COUNT(*) > 1`
3. If duplicates exist in students table, manually delete them

### Issue: JD not showing
**Solution:**
1. Check if drive has JD: `SELECT jd_file, jd_link FROM drives WHERE drive_id=XX`
2. If both NULL or empty, you need to add JD via Edit Drive page
3. If has value but not showing, check file exists: Look in `uploads/jd_files/`

### Issue: Resume 404 errors persist
**Solution:**
1. Manually check if files exist: `ls uploads/resumes/`
2. Run `fix_resume_paths.php` multiple times
3. If file truly missing, student needs to re-upload

## 📝 Files Modified

1. **dashboard.php** (lines 207-213, 377-395)
   - Fixed hired count query
   - Moved sync outside loop
   - Changed query to use drive_id/role_id

2. **registered_students.php** (line 244)
   - Added GROUP BY s.student_id

3. **student_dashboard.php** (lines 32, 77-124)
   - Removed pending applications section
   - Changed grid from 4 to 3 columns

4. **student_header.php** (line 210, 373)
   - Made logout icon always visible
   - Changed logout URL

5. **student_logout.php** (NEW FILE)
   - Proper session cleanup

6. **fix_resume_paths.php** (NEW FILE)
   - Resume migration utility

7. **diagnose_and_fix.php** (NEW FILE)
   - Comprehensive diagnostic tool

## ⚠️ Important Notes

1. **Always backup database** before running SQL scripts
2. **Test in staging** environment first if possible
3. **Clear browser cache** after any PHP changes
4. **Check file permissions** for uploads directory (should be 777 or 755)
5. **Verify sync runs** - placed_students should auto-sync on dashboard load

## 🆘 Still Having Issues?

If problems persist:
1. Check PHP error logs: `tail -f /var/log/apache2/error.log`
2. Check MySQL slow query log
3. Verify database credentials in `config.php`
4. Make sure all tables exist with correct structure
5. Check if applications table has foreign key constraints

## 📊 Expected Results After Fixes

- Dashboard shows correct hired counts (not 0)
- Student count consistent everywhere
- Resume links work (no 404)
- Student can logout properly
- No duplicate student rows
- JD links show for drives that have JDs
- Only 3 cards on student dashboard

---

**Last Updated:** 2026-02-12
**Version:** 1.0
