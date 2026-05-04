# IT23833548 - IT3040 ITPM Assignment 1 Option 2

## Student Details

- Registration Number: IT23833548
- Assignment: IT3040 ITPM Assignment 1 - Option 2
- Topic: Functional and Usability Testing of a Website
- Website Tested: https://www.pixelssuite.com/
- GitHub Repository: https://github.com/Afnath-max/IT23833548-ITPM-Assignment1-Option2

## Testing Scope

This project covers functional and usability testing only.

The following testing areas are outside the scope of this assignment:

- Backend API testing
- Performance testing
- Scalability testing
- Security testing

## Features Tested

1. Document conversion
2. PDF editing
3. Image resizing
4. Cropping
5. Compression
6. Image format conversion
7. Meme generation
8. Color picker
9. Image rotation
10. Image flipping

## Tools Used

- Python
- Playwright
- openpyxl
- Google Chrome or Chromium
- Microsoft Excel

## Project Structure

```text
IT23833548-ITPM-Assignment1-Option2
├── Assignment 1 - Option 2 - For students not familiar with Sinhala.pdf
├── Automation Steps - Option 2.pdf
├── Manual Test Cases for Option 2.xlsx
├── IT23833548_GitHub_Link.txt
├── IT23833548_Manual_Test_Cases.xlsx
├── IT23833548_Manual_Testing_Checklist.md
├── README.md
├── requirements.txt
├── run_automation.bat
├── test_files
│   ├── IT23833548_corrupted_image.png
│   ├── IT23833548_corrupted_pdf.pdf
│   └── IT23833548_password_protected_document.docx
└── test_automation_ui
    ├── image_preview_test.py
    ├── execution_results.csv
    ├── sample.png
    └── results
        └── preview_pass.png
```

## Manual Test Cases

The completed manual and automated scenario list is in:

```text
IT23833548_Manual_Test_Cases.xlsx
```

The workbook contains exactly 36 test scenarios. One scenario is automated using Playwright, and the remaining 35 scenarios are for manual execution.

Manual test cases that have not been executed are intentionally marked with:

- Actual output: `[MANUALLY VERIFY AND ENTER ACTUAL RESULT]`
- Status: `[MANUALLY VERIFY]`

After manually testing each scenario on the live website, replace those placeholders with the observed result and mark the status as `Pass` or `Fail`.

## Manual Testing Checklist

A beginner-friendly manual testing checklist is available in:

```text
IT23833548_Manual_Testing_Checklist.md
```

Use this checklist to execute the 35 manual scenarios. The automated image format conversion preview scenario is handled separately by Playwright.

## Automated Test Scenario

Feature tested:

```text
Image format conversion
```

Automated scenario:

```text
Verify that a valid PNG image upload displays the preview successfully on the image format conversion page.
```

Automation URL:

```text
https://www.pixelssuite.com/convert-to-png
```

## Installation

Install Python 3.11 or newer before running the automation. Google Chrome is recommended, but Playwright can also install Chromium.

This repository includes the Playwright automation script, the Windows runner, the dependency file, sample upload image, output CSV, and result screenshot.

Required dependency/configuration files:

```text
requirements.txt
run_automation.bat
test_automation_ui\image_preview_test.py
test_automation_ui\sample.png
```

To install dependencies manually, open Command Prompt in the project folder and run:

```bat
python -m pip install -U pip
python -m pip install -r requirements.txt
python -m playwright install
```

## How to Run Automation

### Option 1: One-Click Windows Batch File

Double-click:

```text
run_automation.bat
```

The batch file will:

1. Move into the `test_automation_ui` folder.
2. Upgrade pip.
3. Install dependencies from `requirements.txt`.
4. Install Playwright browsers.
5. Run the automated test.
6. Pause so the success or error message can be read.

### Option 2: Manual Command Prompt Commands

Open Command Prompt in the project folder and run:

```bat
cd test_automation_ui
python -m pip install -U pip
python -m pip install -r ..\requirements.txt
python -m playwright install
python image_preview_test.py --url "https://www.pixelssuite.com/convert-to-png" --slow-mo-ms 2000
```

To run the same test in headless mode:

```bat
cd test_automation_ui
python image_preview_test.py --url "https://www.pixelssuite.com/convert-to-png" --headless --timeout-ms 60000
```

## Expected Automation Outputs

After a successful automation run, check:

```text
test_automation_ui\execution_results.csv
test_automation_ui\results\preview_pass.png
```

The CSV file should contain one automated test result row. The status should be `PASS` if the PNG preview is detected successfully.

Successful CSV example:

```text
file_type,file_path,preview_detected,status,screenshot
PNG,sample.png,True,PASS,results\preview_pass.png
```

## GitHub Repository Note

The GitHub repository must be public before submission so the marker can access it:

```text
https://github.com/Afnath-max/IT23833548-ITPM-Assignment1-Option2
```

The same URL is also provided separately in:

```text
IT23833548_GitHub_Link.txt
```

Before final submission, open the GitHub link in a browser while signed out or in a private/incognito window. The repository should show `Public`, and it should contain all project files, especially `requirements.txt`, `run_automation.bat`, and the `test_automation_ui` folder.

## Final Submission Contents

Create a final folder named:

```text
IT23833548
```

Recommended final submission structure:

```text
IT23833548
├── IT23833548_GitHub_Link.txt
├── IT23833548_Manual_Test_Cases.xlsx
├── IT23833548_Manual_Testing_Checklist.md
├── README.md
├── requirements.txt
├── run_automation.bat
└── test_automation_ui
    ├── image_preview_test.py
    ├── execution_results.csv
    ├── results
    │   └── preview_pass.png
    ├── sample.png
    └── other required automation files
```

Before submitting, manually execute the 35 manual test cases and update the Actual output and Status fields in the Excel file.
