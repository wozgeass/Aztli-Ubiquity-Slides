# Makefile for ubiquity-slideshow-ubuntu

SOURCE=.
BUILD=$(SOURCE)/build
SOURCESLIDES=$(SOURCE)/slideshows

all: clean build_aztli

build_init:
	mkdir -p $(BUILD)

build_aztli: build_init
	cp -rL $(SOURCESLIDES)/aztli $(BUILD)

#build_kubuntu: build_init
#	cp -rL $(SOURCESLIDES)/kubuntu $(BUILD)

#build_xubuntu: build_init
#	cp -rL $(SOURCESLIDES)/xubuntu $(BUILD)

#build_lubuntu: build_init
#	cp -rL $(SOURCESLIDES)/lubuntu $(BUILD)

#build_edubuntu: build_init
#	cp -rL $(SOURCESLIDES)/edubuntu $(BUILD)

#build_ubuntustudio: build_init
#	cp -rL $(SOURCESLIDES)/ubuntustudio $(BUILD)

#build_ubuntu-gnome: build_init
#	cp -rL $(SOURCESLIDES)/ubuntu-gnome $(BUILD)


translations:
	python generate-local-slides.py ubuntu
#	python generate-local-slides.py kubuntu
#	python generate-local-slides.py xubuntu
#	python generate-local-slides.py lubuntu
#	python generate-local-slides.py edubuntu
#	python generate-local-slides.py ubuntustudio
#	python generate-local-slides.py ubuntu-gnome

.PHONY : clean

clean:
	-rm -rf $(BUILD)
