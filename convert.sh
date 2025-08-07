#!/bin/bash

echo "Starting DOCX to PDF conversion..."
echo "LibreOffice version:"
libreoffice --version

libreoffice --headless --convert-to pdf input/sample.docx --outdir output

echo "Conversion complete. Output is in /app/output"
