# Remaining Tasks and Issues

## Date: 2026-01-29

### Issues Identified:

#### 1. ✅ UPID Verification - FIXED
**Problem**: Student with UPID "MCC234PLC55" couldn't register
**Solution**: Made UPID verification case-insensitive in `check_student_upid.php`
- Added `strtoupper()` to normalize input
- Changed SQL query to `WHERE UPPER(upid) = ?`

#### 2. ⚠️ Internship Placed Students Tab - NEEDS IMPLEMENTATION
**Problem**: Students placed for internships don't show in "Placed Students" tab
**Required**: Create separate "Internship Placed Students" page

**Implementation Plan**:
1. Copy `placed_students.php` → `internship_placed_students.php`
2. Add filter: `WHERE offer_type = 'Internship'`
3. Update `header.php` to add new menu item
4. Update `customTitles` array

**Data Source**:
- Need to JOIN `placed_students` table with `drive_roles` table to get `offer_type`
- Filter: `dr.offer_type = 'Internship'`

#### 3. ⚠️ Eligibility Logic - NEEDS FIX
**Problem**: Students placed in internships can't apply for full-time roles
**Correct Behavior**:
- ✅ Internship placement → CAN apply to other full-time/PPO/apprentice roles
- ❌ Full-time/PPO/Apprentice placement → CANNOT apply to any roles

**Files to Update**:
- `form_generator.php` (line ~50-100, eligibility check)
- Look for: `if (student is placed)` logic
- Change to: `if (student is placed AND offer_type != 'Internship')`

**SQL Query Needed**:
```sql
SELECT ps.student_id, dr.offer_type
FROM placed_students ps
JOIN drive_roles dr ON ps.role_id = dr.role_id
WHERE ps.student_id = ?
```

Check if `offer_type` is 'Full-time', 'Internship+PPO', or 'Apprentice' before blocking

#### 4. ✅ Generate Report Filtering - ALREADY FIXED (line 434)
**Problem**: When filtering for specific courses (e.g., BCom), "All UG" companies show up
**Solution**: Already fixed in `generate_course_report.php`
- Removed incorrect conditions from `$excludeBroad` logic
- Now properly excludes broad terms when filtering for specific courses

#### 5. ⚠️ Admin Notifications - FIXED BUT USER SHOULD RE-TEST
**Problem**: Delete and Mark as Read buttons not working
**Solution**: Updated `admin_notifications.php` with:
- Changed to delegated event binding
- Added proper error handling
- Added AJAX success/error callbacks

**User Action**: Please test again to confirm it's working

---

## Quick Implementation Steps:

### For Internship Placed Students:

```php
// In header.php, add menu item:
<li>
    <a href="internship_placed_students.php" class="<?= $currentPage === 'internship_placed_students.php' ? 'active' : '' ?>">
        <i class="bi bi-clock-history"></i>
        <span class="links_name">Internship Placements</span>
    </a>
    <span class="tooltip">Internship Placements</span>
</li>

// In customTitles array:
"internship_placed_students" => "Internship Placed Students",
```

### For Eligibility Check Fix:

```php
// Find in form_generator.php (around line 50-100):
// Current (WRONG):
if ($placed_check_result->num_rows > 0) {
    $error_message = "You are already placed and not eligible to apply.";
    header("Location: student_dashboard.php?error=" . urlencode($error_message));
    exit;
}

// Change to (CORRECT):
if ($placed_check_result->num_rows > 0) {
    $placement_row = $placed_check_result->fetch_assoc();

    // Get the offer type of current placement
    $offer_type_query = "SELECT dr.offer_type FROM placed_students ps
                        JOIN drive_roles dr ON ps.role_id = dr.role_id
                        WHERE ps.student_id = ?";
    $stmt = $conn->prepare($offer_type_query);
    $stmt->bind_param("i", $student_id);
    $stmt->execute();
    $offer_result = $stmt->get_result();

    if ($offer_result->num_rows > 0) {
        $offer_data = $offer_result->fetch_assoc();
        $current_offer_type = $offer_data['offer_type'];

        // Only block if placed in Full-time, PPO, or Apprentice
        if ($current_offer_type !== 'Internship') {
            $error_message = "You are already placed ($current_offer_type) and not eligible to apply for other roles.";
            header("Location: student_dashboard.php?error=" . urlencode($error_message));
            exit;
        }
        // If Internship, allow them to continue applying
    }
}
```

---

## Testing Checklist:

- [ ] Test UPID registration with "MCC234PLC55"
- [ ] Test admin notifications delete/mark as read
- [ ] Verify BCom filter in Generate Report doesn't show "All UG"
- [ ] Create Internship Placed Students page
- [ ] Fix eligibility logic for internship placements
- [ ] Test: Student with internship placement can apply for full-time
- [ ] Test: Student with full-time placement cannot apply anywhere

---

## Database Notes:

**placed_students table**: place_id, student_id, drive_id, role_id, ...
**drive_roles table**: role_id, drive_id, offer_type, ...

**JOIN needed**:
```sql
SELECT ps.*, dr.offer_type, dr.designation_name
FROM placed_students ps
LEFT JOIN drive_roles dr ON ps.role_id = dr.role_id
```

---

## Contact:
If you need me to implement the remaining tasks, please let me know which ones to prioritize!
