serve:
	firebase serve --only hosting --port 8080

deploy:
	firebase deploy

images:
	cd ./public/images; find . -name "*.jpg" -print | xargs -L 1 -I {}  convert  -strip -interlace Plane -quality 85 -resize 256x256 {} ../thumb/ {}