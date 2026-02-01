\# MATLAB Source Code – Traffic Sign Detection



This folder contains the \*\*MATLAB implementation files\*\* for the Traffic Sign Detection project.



\## Files Description



\### 1. main\_traffic\_sign\_detection.m

\- Main script of the project

\- Performs:

&nbsp; - Image reading

&nbsp; - Grayscale conversion

&nbsp; - Edge detection

&nbsp; - Morphological processing

&nbsp; - Region detection

&nbsp; - Traffic sign visualization



\### 2. classifyTrafficSign.m

\- User-defined function

\- Classifies cropped regions as traffic signs

\- Uses edge density as the decision criterion



---







\\## MATLAB Functions Used







\\- `imread`



\\- `rgb2gray`



\\- `edge`



\\- `strel`



\\- `imdilate`



\\- `graythresh`



\\- `imbinarize`



\\- `imfill`



\\- `bwconncomp`



\\- `regionprops`



\\- `imcrop`







---

