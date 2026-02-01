\# Traffic Sign Detection Using MATLAB



This project implements a \*\*Traffic Sign Detection system using MATLAB\*\* based on \*\*image processing techniques\*\*.  

The system detects traffic signs such as \*\*STOP signs and Turn signs\*\* from road images and highlights them using bounding boxes.



\## Project Structure



traffic-sign-detection-using-matlab/

│

├── Code/

│   ├── main\_traffic\_sign\_detection.m

│   ├── classifyTrafficSign.m

│   └── README.md

│

├── Results/

│   ├── Detection of STOP Sign-1.jpg

│   ├── Detection Of Stop Sign-2.jpg

│   ├── Detection of Turn Sign.jpg

│   └── README.md

│

└── README.md



---



\## Methodology



1\. Read input image  

2\. Convert RGB image to grayscale  

3\. Perform edge detection (Canny)  

4\. Apply morphological operations  

5\. Perform thresholding and hole filling  

6\. Extract connected components  

7\. Crop candidate regions  

8\. Classify traffic signs  

9\. Display detected signs with bounding boxes  



---



\## Requirements



\- MATLAB (R2016b or later)

\- Image Processing Toolbox



---



\## MATLAB Functions Used



\- `imread`

\- `rgb2gray`

\- `edge`

\- `strel`

\- `imdilate`

\- `graythresh`

\- `imbinarize`

\- `imfill`

\- `bwconncomp`

\- `regionprops`

\- `imcrop`



---



\## Results



Detected traffic signs will be displayed with bounding boxes.



---



\## Applications



\- Intelligent Transportation Systems  

\- Driver Assistance Systems  

\- Smart Cities  

\- Autonomous Vehicles  



---

