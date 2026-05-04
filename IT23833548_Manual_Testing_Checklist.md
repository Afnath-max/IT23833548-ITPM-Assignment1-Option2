# IT23833548 Manual Testing Checklist

This checklist is aligned with the executed results recorded in `IT23833548_Manual_Test_Cases.xlsx`.

## Scope Summary

- Website tested: https://www.pixelssuite.com/
- Total test scenarios in workbook: 36
- Manual test scenarios in this checklist: 35
- Automated Playwright scenario excluded from manual checklist: Pos_0021
- Manual results recorded: 34 Pass, 1 Fail
- Overall workbook results recorded: 35 Pass, 1 Fail

## Automated Scenario Reference

Pos_0021 is handled by Playwright using `test_automation_ui/image_preview_test.py`, so it is not repeated as a manual checklist item.

- Feature tested: Image format conversion
- Input/action: AUTOMATED WITH PLAYWRIGHT: Open https://www.pixelssuite.com/convert-to-png, upload sample.png, and verify that a preview is displayed.
- Expected output: The valid PNG file should upload successfully and the preview should be visible on the image format conversion page.
- Actual output: Automation executed successfully. The PNG preview was detected and results/preview_pass.png was generated.
- Status: Pass

## Manual Test Cases

## Pos_0001 - Document conversion

- Input/action tested: Open the document conversion feature. Upload a valid DOCX file containing simple text. Select PDF as the output format and click the convert/download option.
- Expected output: The document should be accepted, converted successfully, and a downloadable PDF file should be provided.
- Actual output recorded: The valid DOCX file was uploaded and converted successfully after waiting for the process to complete. The converted PDF download option was displayed.
- Status recorded: Pass
- Assumption for expected output: A valid DOCX file is supported by the website, and conversion may take time depending on network speed.

## Neg_0002 - Document conversion

- Input/action tested: Open the document conversion feature. Do not upload any file. Check whether the Convert to PDF button is visible or available.
- Expected output: The Convert to PDF button should not be shown or should remain unavailable until a valid document is uploaded.
- Actual output recorded: No document was uploaded, and the Convert to PDF button was not displayed.
- Status recorded: Pass
- Assumption for expected output: The conversion action should only appear after a valid file is selected.

## Neg_0003 - Document conversion

- Input/action tested: Open the document conversion feature. Upload an unsupported .exe file and try to convert it.
- Expected output: The system should not convert the unsupported file and should display a clear failure or validation message.
- Actual output recorded: The unsupported .exe file was selected, and the website displayed the message: "Conversion failed. Please try another document." No converted PDF was generated.
- Status recorded: Pass
- Assumption for expected output: Unsupported executable files should not be converted by the document conversion feature.

## Neg_0004 - Document conversion

- Input/action tested: Open the document conversion feature. Upload the password-protected DOCX file named IT23833548_password_protected_document.docx and try to convert it.
- Expected output: The system should not convert the password-protected document and should display a clear failure message without generating a PDF.
- Actual output recorded: The password-protected DOCX file was selected, and the website displayed the message: "Conversion failed. Please try another document." No converted PDF was generated.
- Status recorded: Pass
- Assumption for expected output: Password-protected documents should not be converted unless the system can access their contents.

## Pos_0005 - PDF editing

- Input/action tested: Open the PDF editing feature. Upload a valid PDF file. Add a small text annotation and save or download the edited PDF.
- Expected output: The PDF should load correctly in the editor, the added text annotation should be visible, and the edited PDF should be available to save or download.
- Actual output recorded: The valid PDF file loaded successfully in the editor, and the added text annotation was visible on the PDF page. The PDF editing workflow worked as expected.
- Status recorded: Pass
- Assumption for expected output: A valid PDF file can be opened and edited using the website PDF editing feature.

## Neg_0006 - PDF editing

- Input/action tested: Open the PDF editing feature. Do not choose or upload any PDF file. Observe the toolbar/editing options and the page preview area.
- Expected output: The editor should not allow meaningful PDF editing because no PDF page is loaded. Editing tools may be visible, but they should not apply changes to any document until a PDF is selected.
- Actual output recorded: No PDF file was selected. The PDF editor page showed the toolbar and editing options, but the page preview area remained blank and there was no document content to edit.
- Status recorded: Pass
- Assumption for expected output: PDF editing tools require a loaded PDF document before edits can be applied to actual content.

## Neg_0007 - PDF editing

- Input/action tested: Open the PDF editing feature. Upload a PNG image file instead of a PDF file. Observe the toolbar and page preview area.
- Expected output: The editor should not load the PNG as editable PDF content. It should either reject the non-PDF file or leave the document preview unavailable so no PDF edits can be applied.
- Actual output recorded: A PNG image file was selected and the toolbar/editing options were visible, but the page preview area remained blank and there was no PDF document content to edit.
- Status recorded: Pass
- Assumption for expected output: The PDF editor requires a valid PDF file; image files should not become editable PDF document content.

## Neg_0008 - PDF editing

- Input/action tested: Open the PDF editing feature. Upload the corrupted PDF file named IT23833548_corrupted_pdf.pdf and observe whether the editor preview loads.
- Expected output: The corrupted PDF should not load as editable PDF content, and the page preview area should remain unavailable or blank.
- Actual output recorded: The corrupted PDF file was selected, but no PDF preview or editable document content was loaded in the page area.
- Status recorded: Pass
- Assumption for expected output: Corrupted PDF files should not be loaded as valid editable documents.

## Pos_0009 - Image resizing

- Input/action tested: Open the image resizing feature. Upload a valid PNG or JPG image. Enter width 400 while keeping aspect ratio enabled, then use the download option.
- Expected output: The image should resize successfully, show a resized preview, and provide a downloadable resized image file.
- Actual output recorded: The valid image was uploaded successfully. The resized preview was displayed, the width was set to 400, the height was adjusted automatically to keep aspect ratio, and the Download PNG option was available.
- Status recorded: Pass
- Assumption for expected output: When keep aspect ratio is enabled, the height can change automatically based on the entered width.

## Neg_0010 - Image resizing

- Input/action tested: Open the image resizing feature. Upload a valid image. Try to enter 0 or a negative value in the width and height fields.
- Expected output: The system should prevent invalid dimensions by enforcing positive values before resizing or downloading.
- Actual output recorded: The resize fields prevented 0 or negative dimensions from being entered. The minimum accepted value was 1, and the resize/download controls continued to work with valid positive dimensions.
- Status recorded: Pass
- Assumption for expected output: Image width and height must be at least 1 pixel to create a valid resized image.

## Neg_0011 - Image resizing

- Input/action tested: Open the image resizing feature. Upload a non-image file such as a TXT file and observe the resize panel and preview area.
- Expected output: The system should reject or prevent non-image files from loading. It should keep the resize panel in the "Select an image to configure size" state, keep the preview empty, and should not display a download option.
- Actual output recorded: Tested with a non-image TXT file. The file was not previewed, the resize panel displayed "Select an image to configure size," the preview area showed "No image yet," and no download option was displayed.
- Status recorded: Pass
- Assumption for expected output: The resize tool should accept only supported image files such as PNG, JPG, or WEBP.

## Neg_0012 - Image resizing

- Input/action tested: Open the image resizing feature. Upload a valid image. Enter very large dimensions such as 10000 x 20000 and use the download option.
- Expected output: The system should prevent or handle very large dimensions gracefully by showing a clear validation message or avoiding a broken output.
- Actual output recorded: After entering very large dimensions, the preview stopped displaying the resized image properly and the downloaded file opened as a blank/empty-looking image.
- Status recorded: Fail
- Assumption for expected output: Very large resize dimensions can exceed practical image rendering limits and should be validated before download.

## Pos_0013 - Cropping

- Input/action tested: Open the Crop PNG feature. Upload a valid PNG image. Select a visible crop area and use the download option.
- Expected output: The selected crop area should be shown in the preview, and a downloadable cropped image should be available.
- Actual output recorded: The valid PNG image was uploaded successfully. A crop area was selected, the cropped preview was displayed, and the Download option was available.
- Status recorded: Pass
- Assumption for expected output: A valid PNG image with a selected crop area can be cropped and downloaded.

## Neg_0014 - Cropping

- Input/action tested: Open the Crop PNG feature. Upload a valid image and do not manually change the crop selection area.
- Expected output: The system should handle the missing manual crop selection safely by using the default crop area and showing a preview/download option.
- Actual output recorded: After the image was uploaded, the crop area was automatically selected around the image. There was no separate crop button, and the preview and Download button were displayed.
- Status recorded: Pass
- Assumption for expected output: The crop tool uses a default crop selection when the user does not manually adjust the crop area.

## Neg_0015 - Cropping

- Input/action tested: Open the Crop PNG feature. Upload an unsupported file such as a PDF file and observe the crop panel and preview area.
- Expected output: The system should reject or prevent unsupported files from loading. It should keep the crop panel in the "Select an image to crop" state, keep the preview empty, and should not display a Download button.
- Actual output recorded: Tested with an unsupported PDF file. The file was not previewed, the crop panel displayed "Select an image to crop," the preview area showed "No image yet," and no Download button was displayed.
- Status recorded: Pass
- Assumption for expected output: The crop tool should accept only supported image files such as PNG, JPG, or WEBP.

## Neg_0016 - Cropping

- Input/action tested: Open the cropping feature. Upload a corrupted image file or an image file that cannot be loaded and observe the crop panel and preview area.
- Expected output: The system should guard the crop workflow by preventing the corrupted image from loading. It should keep the crop panel in the "Select an image to crop" state, keep the preview empty, and should not display a Download button.
- Actual output recorded: Tested with a corrupted image file. The file was not previewed, no Download button appeared, and the crop panel stayed in the image-selection state.
- Status recorded: Pass
- Assumption for expected output: A corrupted image cannot be cropped normally, so the app should prevent preview and download output for that file.

## Pos_0017 - Compression

- Input/action tested: Open the compression feature. Upload a valid PNG or JPG image. Confirm the image preview is displayed, adjust the compression quality if needed, and click Download.
- Expected output: The system should display the uploaded image preview, show the compression controls, and provide a downloadable compressed image file.
- Actual output recorded: Tested with a valid image. The preview displayed successfully, the compression controls were shown, and the Download button downloaded the compressed image successfully.
- Status recorded: Pass
- Assumption for expected output: A valid PNG or JPG image within the supported size limit can be previewed and compressed successfully.

## Neg_0018 - Compression

- Input/action tested: Open the compression feature. Do not upload any file. Observe the compression panel, preview area, and whether any Download option is available.
- Expected output: The system should guard the compression workflow until an image is uploaded. It should show that no image is selected, keep the preview empty, and should not display a Download button.
- Actual output recorded: Tested without uploading any file. The page showed the upload area, the compression panel displayed "Select an image to compress," the preview area showed "No image yet," and no Download button was displayed.
- Status recorded: Pass
- Assumption for expected output: Compression requires a valid uploaded image. The quality scale and download option should only be available after a supported image is selected.

## Neg_0019 - Compression

- Input/action tested: Open the compression feature. Upload an unsupported file such as a PDF or DOCX file and observe the compression panel and preview area.
- Expected output: The system should reject or prevent unsupported files from loading. It should keep the compression panel in the "Select an image to compress" state, keep the preview empty, and should not display a Download button.
- Actual output recorded: Tested with an unsupported file. The file was not previewed, no Download button appeared, the preview area stayed empty, and the compression panel showed "Select an image to compress."
- Status recorded: Pass
- Assumption for expected output: The compression feature should accept only supported image files such as PNG, JPG, or WEBP.

## Neg_0020 - Compression

- Input/action tested: Open the compression feature. Upload a corrupted image file and observe the compression panel and preview area.
- Expected output: The system should guard the compression workflow by preventing the corrupted file from loading. It should keep the compression panel in the "Select an image to compress" state, keep the preview empty, and should not display a Download button.
- Actual output recorded: Tested with a corrupted image file. The file was not previewed, no Download button appeared, and the compression section showed "Select an image to compress."
- Status recorded: Pass
- Assumption for expected output: A corrupted image cannot be compressed normally, so the app should prevent preview and download output for that file.

## Neg_0022 - Image format conversion

- Input/action tested: Open the image format conversion feature. Do not upload any file. Observe the convert panel, preview area, and whether any Download option is available.
- Expected output: The system should guard the conversion workflow until an image is uploaded. It should show that no image is selected, keep the preview empty, and should not display a Download button.
- Actual output recorded: Tested without uploading any file. The convert panel displayed "Select an image to convert," the preview area showed "No image yet," and no Download button was displayed.
- Status recorded: Pass
- Assumption for expected output: Image format conversion requires a valid uploaded image before preview or download output can be shown.

## Neg_0023 - Image format conversion

- Input/action tested: Open the image format conversion feature. Upload an unsupported file such as a TXT or DOCX file and observe the convert panel and preview area.
- Expected output: The system should reject or prevent unsupported files from loading. It should keep the convert panel in the "Select an image to convert" state, keep the preview empty, and should not display a Download button.
- Actual output recorded: Tested with an unsupported file. The file was not previewed, no Download button appeared, the preview area stayed empty, and the convert panel showed "Select an image to convert."
- Status recorded: Pass
- Assumption for expected output: The image format conversion feature should accept only supported image files such as PNG, JPG, or WEBP.

## Neg_0024 - Image format conversion

- Input/action tested: Open the image format conversion feature. Upload a corrupted image file renamed with a PNG extension and observe the convert panel and preview area.
- Expected output: The system should guard the conversion workflow by preventing the corrupted image from loading. It should keep the convert panel in the "Select an image to convert" state, keep the preview empty, and should not display a Download button.
- Actual output recorded: Tested with a corrupted image file. The file was not previewed, no Download button appeared, the preview area stayed empty, and the convert panel showed "Select an image to convert."
- Status recorded: Pass
- Assumption for expected output: A corrupted image cannot be converted normally, so the app should prevent preview and download output for that file.

## Pos_0025 - Meme generation

- Input/action tested: Open the meme generation feature under More. Upload a valid image, enter short top and bottom meme text, confirm the preview is displayed, and click Download Meme.
- Expected output: The meme should be generated with the entered text visible on the image, the preview should be displayed, and the Download Meme option should be available.
- Actual output recorded: Tested with a valid image and entered top and bottom meme text. The meme preview displayed successfully, the Download Meme button appeared, and the generated meme downloaded successfully.
- Status recorded: Pass
- Assumption for expected output: A valid supported image can be used to generate a meme with visible top and bottom text.

## Neg_0026 - Meme generation

- Input/action tested: Open the meme generation feature. Do not upload an image. Enter meme text if the fields are available and observe the preview and download area.
- Expected output: The system should guard meme generation until an image is uploaded. It should indicate that an image is required, keep the preview empty, and should not display a Download Meme button.
- Actual output recorded: Tested without uploading an image. The meme was not previewed, no Download Meme button appeared, and the feature stayed in the state requiring an image to be selected first.
- Status recorded: Pass
- Assumption for expected output: Meme generation requires a valid uploaded image before preview or download output can be shown.

## Neg_0027 - Meme generation

- Input/action tested: Open the meme generation feature. Upload a valid image but leave all meme text fields empty. Observe the preview and click Download Meme if available.
- Expected output: The system should allow meme generation without text if text input is optional. It should show a clear image preview and provide a Download Meme option without confusing the user.
- Actual output recorded: Tested with a valid image and left the top and bottom text fields empty. The image preview displayed without meme text, the Download Meme button was available, and the meme downloaded successfully.
- Status recorded: Pass
- Assumption for expected output: Meme text is optional. A valid uploaded image can still be previewed and downloaded as a meme output without top or bottom text.

## Pos_0028 - Color picker

- Input/action tested: Open the color picker feature under More. Use the default red color or select any visible color from the picker and observe the selected color, HEX value, RGB value, and copy options.
- Expected output: The selected color should be displayed clearly with color values such as HEX and RGB, and copy options should be available.
- Actual output recorded: Tested the default red color picker state. The selected color was displayed, the HEX value showed #ff0000, the RGB value showed rgb(255, 0, 0), and Copy buttons were available for the displayed color values.
- Status recorded: Pass
- Assumption for expected output: The color picker does not require an uploaded image. Users can select any color directly from the picker and copy the generated color values.

## Neg_0029 - Color picker

- Input/action tested: Open the color picker feature. Do not upload an image. Use the default selected color or pick another color and try to copy the color value.
- Expected output: The system should allow color picking without requiring an image. It should show a default selected color, display HEX and RGB values, and provide copy options.
- Actual output recorded: Tested without uploading any image. The color picker loaded with default red selected, displayed #ff0000 and rgb(255, 0, 0), allowed color selection, and showed Copy buttons for the color values.
- Status recorded: Pass
- Assumption for expected output: The color picker is not image-upload based; it should work from the built-in color selection area.

## Neg_0030 - Color picker

- Input/action tested: Open the color picker feature. Select a color and switch between the RGB, HSV, HSL, and CMYK format tabs. Observe whether each format value is displayed clearly and whether copy options remain available.
- Expected output: The system should update the displayed color format correctly when each format tab is selected. It should not show blank, confusing, or incorrect values, and copy options should remain usable.
- Actual output recorded: Tested by selecting a color and switching between the available color format tabs. The selected color remained visible, the format values changed according to the selected tab, and the Copy buttons remained available.
- Status recorded: Pass
- Assumption for expected output: The color picker should provide multiple readable color formats for the same selected color without requiring an image upload.

## Pos_0031 - Image rotation

- Input/action tested: Open the image rotation feature under More. Upload a valid PNG or JPG image. Use the angle slider or the -90 and +90 controls, observe the preview, and click Download Rotated.
- Expected output: The image should load successfully, rotation controls should be available, the rotated preview should display clearly, and the Download Rotated option should be available.
- Actual output recorded: Tested with a valid image. The image preview displayed successfully, the rotation controls were available, and the Download Rotated button was shown for downloading the rotated image.
- Status recorded: Pass
- Assumption for expected output: A valid supported image can be rotated and downloaded using the image rotation feature.

## Neg_0032 - Image rotation

- Input/action tested: Open the image rotation feature. Do not upload an image. Observe the rotate panel, preview area, and whether any Download Rotated option is available.
- Expected output: The system should guard the rotation workflow until an image is uploaded. It should show that no image is selected, keep the preview empty, and should not display a Download Rotated button.
- Actual output recorded: Tested without uploading any image. The rotate panel displayed "Select an image to rotate," the preview area showed "No image yet," and no Download Rotated button was displayed.
- Status recorded: Pass
- Assumption for expected output: Image rotation requires a valid uploaded image before preview or download output can be shown.

## Neg_0033 - Image rotation

- Input/action tested: Open the image rotation feature. Upload an unsupported file such as a PDF or TXT file and observe the rotate panel and preview area.
- Expected output: The system should reject or prevent unsupported files from loading. It should keep the rotate panel in the "Select an image to rotate" state, keep the preview empty, and should not display a Download Rotated button.
- Actual output recorded: Tested with an unsupported file. The file was not previewed, no Download Rotated button appeared, the preview area showed "No image yet," and the rotate panel showed "Select an image to rotate."
- Status recorded: Pass
- Assumption for expected output: The image rotation feature should accept only supported image files such as PNG, JPG, or WEBP.

## Pos_0034 - Image flipping

- Input/action tested: Open the image flipping feature under More. Upload a valid PNG or JPG image. Select horizontal flip, observe the preview, and click Download Flipped.
- Expected output: The image should load successfully, flip controls should be available, the flipped preview should display clearly, and the Download Flipped option should be available.
- Actual output recorded: Tested with a valid image. The image preview displayed successfully, the flip controls were available, and the Download Flipped button was shown for downloading the flipped image.
- Status recorded: Pass
- Assumption for expected output: A valid supported image can be flipped and downloaded using the image flipping feature.

## Neg_0035 - Image flipping

- Input/action tested: Open the image flipping feature. Do not upload an image. Observe the flip panel, preview area, and whether any Download Flipped option is available.
- Expected output: The system should guard the flipping workflow until an image is uploaded. It should show that no image is selected, keep the preview empty, and should not display a Download Flipped button.
- Actual output recorded: Tested without uploading any image. The flip panel displayed that an image must be selected first, the preview area showed no image, and no Download Flipped button was displayed.
- Status recorded: Pass
- Assumption for expected output: Image flipping requires a valid uploaded image before preview or download output can be shown.

## Neg_0036 - Image flipping

- Input/action tested: Open the image flipping feature. Upload a corrupted image file or unsupported file type and observe the flip panel and preview area.
- Expected output: The system should reject or prevent corrupted and unsupported files from loading. It should keep the flip panel in the image-selection state, keep the preview empty, and should not display a Download Flipped button.
- Actual output recorded: Tested with a corrupted or unsupported file. The file was not previewed, no Download Flipped button appeared, and the feature stayed in the state requiring a valid image to be selected first.
- Status recorded: Pass
- Assumption for expected output: The image flipping feature should accept only valid supported image files such as PNG, JPG, or WEBP.
