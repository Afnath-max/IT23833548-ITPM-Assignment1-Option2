# IT23833548 Manual Testing Checklist

This checklist is for the 35 manual test cases only. The automated scenario `Pos_0021` is handled by Playwright using `image_preview_test.py`.

For each manual test, replace `[MANUALLY VERIFY AND ENTER ACTUAL RESULT]` in the Excel file with what you actually observe. Then replace `[MANUALLY VERIFY]` with `Pass` or `Fail`.

## How to Decide Pass or Fail

- Write `Pass` if the actual website behavior matches the expected output.
- Write `Fail` if the website allows an invalid action, gives no useful message, freezes, gives a broken output, or behaves differently from the expected output.
- Keep your Actual Output honest and specific. Do not mark manual tests as passed without executing them.

## Pos_0001 - Document conversion

- Feature to open: Document conversion
- File type or input to use: Open the document conversion feature. Upload a valid DOCX file containing simple text. Select PDF as the output format and click the convert/download option.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The document should be accepted, converted successfully, and a downloadable PDF file should be provided.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Pos_0001.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0002 - Document conversion

- Feature to open: Document conversion
- File type or input to use: Open the document conversion feature. Do not upload any file. Click the convert button if it is available.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should not start conversion and should show a clear message or disabled action indicating that a file is required.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0002.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0003 - Document conversion

- Feature to open: Document conversion
- File type or input to use: Open the document conversion feature. Upload an unsupported file such as a .txt or .exe file. Try to convert it.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should reject the unsupported file and display a clear file type validation message.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0003.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0004 - Document conversion

- Feature to open: Document conversion
- File type or input to use: Open the document conversion feature. Upload a corrupted or password-protected document file. Try to convert it.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should fail gracefully and display a clear message instead of showing a broken preview or endless loading.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0004.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Pos_0005 - PDF editing

- Feature to open: PDF editing
- File type or input to use: Open the PDF editing feature. Upload a valid PDF file. Add a small text annotation and save or download the edited PDF.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The PDF should load correctly, the annotation should be visible, and the edited PDF should be available for download.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Pos_0005.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0006 - PDF editing

- Feature to open: PDF editing
- File type or input to use: Open the PDF editing feature. Do not upload a PDF file. Try to use the edit or save option.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should prevent editing and clearly indicate that a PDF file must be uploaded first.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0006.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0007 - PDF editing

- Feature to open: PDF editing
- File type or input to use: Open the PDF editing feature. Upload an image file such as PNG or JPG instead of a PDF file.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should reject the non-PDF file and show a clear unsupported file type message.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0007.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0008 - PDF editing

- Feature to open: PDF editing
- File type or input to use: Open the PDF editing feature. Upload a corrupted PDF file and wait for the editor or preview to load.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should show a clear error message and should not freeze or display a broken editor.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0008.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Pos_0009 - Image resizing

- Feature to open: Image resizing
- File type or input to use: Open the image resizing feature. Upload a valid JPG or PNG image. Enter width 400 and height 300, then click resize/download.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The image should resize successfully and provide a downloadable resized image with the requested dimensions or visible resized preview.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Pos_0009.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0010 - Image resizing

- Feature to open: Image resizing
- File type or input to use: Open the image resizing feature. Upload a valid image. Leave width and height empty or enter 0, then click resize.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should not resize the image and should display a clear validation message for invalid dimensions.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0010.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0011 - Image resizing

- Feature to open: Image resizing
- File type or input to use: Open the image resizing feature. Upload a non-image file such as .txt, then try to resize it.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should reject the file and display a clear unsupported file type message.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0011.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0012 - Image resizing

- Feature to open: Image resizing
- File type or input to use: Open the image resizing feature. Upload a valid image. Enter very large dimensions such as 50000 x 50000 and click resize.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should prevent or handle the request gracefully with a clear message, without crashing or endless loading.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0012.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Pos_0013 - Cropping

- Feature to open: Cropping
- File type or input to use: Open the cropping feature. Upload a valid PNG or JPG image. Select a visible crop area and click crop/download.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The selected area should be cropped successfully and a preview or downloadable cropped image should be shown.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Pos_0013.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0014 - Cropping

- Feature to open: Cropping
- File type or input to use: Open the cropping feature. Upload a valid image but do not select any crop area. Click crop if the button is available.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should not crop and should show a clear message or keep the crop action disabled until an area is selected.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0014.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0015 - Cropping

- Feature to open: Cropping
- File type or input to use: Open the cropping feature. Upload an unsupported file such as a PDF or TXT file.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should reject the file and show a clear unsupported file type message.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0015.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0016 - Cropping

- Feature to open: Cropping
- File type or input to use: Open the cropping feature. Upload a corrupted image file or an image file that cannot be previewed.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should show a clear error message and should not display a broken crop workspace.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0016.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Pos_0017 - Compression

- Feature to open: Compression
- File type or input to use: Open the compression feature. Upload a valid PNG or JPG image and click compress/download.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The image should compress successfully and provide a downloadable compressed file or clear compressed result preview.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Pos_0017.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0018 - Compression

- Feature to open: Compression
- File type or input to use: Open the compression feature. Do not upload any file. Click compress if the button is available.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should prevent compression and clearly indicate that a file must be uploaded first.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0018.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0019 - Compression

- Feature to open: Compression
- File type or input to use: Open the compression feature. Upload an unsupported file such as a PDF or DOCX file.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should reject the file and display a clear unsupported file type message.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0019.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0020 - Compression

- Feature to open: Compression
- File type or input to use: Open the compression feature. Upload a corrupted image file and click compress.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should show a clear error message and should not generate a misleading compressed output.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0020.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0022 - Image format conversion

- Feature to open: Image format conversion
- File type or input to use: Open the image format conversion feature. Do not upload any file. Click convert if the button is available.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should prevent conversion and clearly indicate that a file is required.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0022.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0023 - Image format conversion

- Feature to open: Image format conversion
- File type or input to use: Open the image format conversion feature. Upload an unsupported file such as .txt or .docx and try to convert it.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should reject the unsupported file and show a clear validation message.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0023.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0024 - Image format conversion

- Feature to open: Image format conversion
- File type or input to use: Open the image format conversion feature. Upload a corrupted image file renamed with a .png extension and try to convert it.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should detect that the image cannot be processed and display a clear error message.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0024.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Pos_0025 - Meme generation

- Feature to open: Meme generation
- File type or input to use: Open the meme generation feature under More. Upload a valid image, enter short top and bottom meme text, and generate/download the meme.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The meme should be generated with the entered text visible on the image and a download option should be available.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Pos_0025.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0026 - Meme generation

- Feature to open: Meme generation
- File type or input to use: Open the meme generation feature. Do not upload an image. Enter meme text and click generate if available.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should prevent meme generation and clearly indicate that an image is required.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0026.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0027 - Meme generation

- Feature to open: Meme generation
- File type or input to use: Open the meme generation feature. Upload a valid image but leave all meme text fields empty, then click generate.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should either request text input or clearly generate an image without text without confusing the user.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0027.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Pos_0028 - Color picker

- Feature to open: Color picker
- File type or input to use: Open the color picker feature under More. Upload a valid colorful image and select a visible area or pixel color.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The selected color should be detected and displayed with a clear color value such as HEX or RGB.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Pos_0028.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0029 - Color picker

- Feature to open: Color picker
- File type or input to use: Open the color picker feature. Do not upload an image and try to pick or copy a color.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should prevent color picking and clearly indicate that an image is required first.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0029.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0030 - Color picker

- Feature to open: Color picker
- File type or input to use: Open the color picker feature. Upload an unsupported file such as a PDF or TXT file.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should reject the unsupported file and display a clear file type validation message.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0030.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Pos_0031 - Image rotation

- Feature to open: Image rotation
- File type or input to use: Open the image rotation feature under More. Upload a valid PNG or JPG image. Rotate it 90 degrees and download or preview the result.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The image should rotate correctly and the rotated preview or download should be available.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Pos_0031.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0032 - Image rotation

- Feature to open: Image rotation
- File type or input to use: Open the image rotation feature. Do not upload an image. Click rotate if the button is available.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should prevent rotation and clearly indicate that an image must be uploaded first.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0032.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0033 - Image rotation

- Feature to open: Image rotation
- File type or input to use: Open the image rotation feature. Upload an unsupported file such as .txt or .pdf.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should reject the file and show a clear unsupported file type message.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0033.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Pos_0034 - Image flipping

- Feature to open: Image flipping
- File type or input to use: Open the image flipping feature under More. Upload a valid image. Select horizontal flip and preview/download the result.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The image should flip horizontally and the flipped preview or download should be available.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Pos_0034.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0035 - Image flipping

- Feature to open: Image flipping
- File type or input to use: Open the image flipping feature. Do not upload an image. Click flip if the button is available.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should prevent flipping and clearly indicate that an image must be uploaded first.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0035.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.

## Neg_0036 - Image flipping

- Feature to open: Image flipping
- File type or input to use: Open the image flipping feature. Upload a corrupted image file or unsupported file type and try to flip it.
- Exact action to perform: Follow the input steps above on https://www.pixelssuite.com/ and use the related tool page for this feature.
- Result to observe: The system should reject the file or show a clear error message without producing a broken output.
- If it passes, write in Actual Output: The observed website behavior matched the expected output for Neg_0036.
- If it fails, write in Actual Output: Describe exactly what happened, such as missing error message, broken preview, no download option, wrong output, or endless loading.
- Pass or Fail decision: Mark `Pass` only if the observed result matches the expected output. Otherwise mark `Fail`.
