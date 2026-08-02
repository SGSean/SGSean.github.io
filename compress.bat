@echo off
mkdir compressimage

for %%f in (*.jpg) do (
  ffmpeg -i "%%f" -vf "scale='min(2000,iw)':'min(2000,ih)':force_original_aspect_ratio=decrease" -q:v 4 "compressimage\%%f"
)

echo Done!
pause