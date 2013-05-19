#!/usr/bin/env bash

#ubuntu info, and in special ubuntu specific program installation procedures

#running this file should do all automatable steps to install useful stuff we find useful.

#non automatable steps shall be labelled as:

    #MANUAL: edit that file and click some buttons

##info

    #a debian based distribution

    #unlike debian maintained by the cannonical company
    #which gets money by offering maintaincance (debian is managed by the community)

    #important implications:

        #many key programs are the same:

        #- `dpkg` for packages
        #- `upstart` for init

    ##upgrade version

        #sudo aptitude install -y update-manager-core
        #sudo do-release-upgrade
        #sudo aptitude update && sudo aptitude upgrade

    #open app without global menu

        #env UBUNTU_MENUPROXY=0 golly

    #ubuntu-tweak

        #configure ubuntu


##installation procedures

    ##before anything

            sudo apt-get update

        #like apt-get, but removing  a package will also uninstall all dependencies that
        #were installed for that package:

            sudo apt-get install -y aptitude

    ##manual

        ##printer

            #worked for: EPSON xp-202

            #type printer in dash

            #the guide shows you everything

    ##default ppas

        #those already come in default ppas

            sudo aptitude install -y abcde
            sudo aptitude install -y alarm-clock-applet
            sudo aptitude install -y apt-rdepends

            sudo aptitude install -y apt-file
            apt-file update

            sudo aptitude install -y aview

        #MANUAL: search aspell dictionnaries:

            #sudo aptitude search aspell-
            sudo aptitude search aspell-fr
            sudo aptitude search aspell-pt-br

        #.arj files:

            #sudo aptitude install -y arj

        #microsoft cabinet format:

            #sudo aptitude install -y cabextract

            sudo aptitude install -y caca-utils

            sudo aptitude install -y cplay
            sudo aptitude install -y dvipng
            #sudo aptitude install -y exactimage
            sudo aptitude install -y file-roller

        #glasgow haskell compiler:

            #sudo aptitude install -y ghc

            sudo aptitude install -y gnome-tweak-tool
            sudo aptitude install -y goldendict
            sudo aptitude install -y guvcview

        #ibus input methods for qt:

            sudo aptitude install -y ibus-qt4

            sudo aptitude install -y id3tool

            sudo aptitude install -y lame
            sudo aptitude install -y logkeys

        #nasm assembler:

            sudo aptitude install -y nasm

        #.lzh files used on DOS, legacy:

            #sudo aptitude install -y lha

        #mime messages

            #sudo aptitude install -y mpack

        #7 zip:

            sudo aptitude install -y p7zip-full

            sudo aptitude install -y ppa-purge
            sudo aptitude install -y python-scipy
            sudo aptitude install -y python-matplotlib

        #shell archives:

            #sudo aptitude install -y sharutils

            sudo aptitude install -y samba

        ##sox

                sudo aptitude intall -y sox
                sudo aptitude intall -y libsox-fmt-mp3

            #search for formats and install those you want:

                #apt-cache search libsox-fmt-

        #usefull stuff that does not come by default or Canonical would have to pay royalties:

            sudo aptitude install -y ubuntu-restricted-extras


        #.ace files

            #sudo aptitude install -y unace

        #uuencode, xxencode, BASE64, quoted printable, BinHex

            sudo aptitude install -y uudeview

            sudo aptitude install -y zip unzip
            sudo aptitude install -y wmctrl

        ##book

            sudo aptitude install -y okular okular-extra-backends
            sudo aptitude install -y fbreader
            sudo aptitude install -y calibre
            #sudo aptitude install -y kchmreader
            sudo aptitude install -y chmsee
            sudo aptitude install -y pdftk
            sudo aptitude install -y djvulibre-bin

        ##sound

            sudo aptitude install -y shntool
            sudo aptitude install -y cuetools
            sudo aptitude install -y flac
            sudo aptitude install -y wavpack

        ##ftp

            #very secure ftp deamon ftp server:

                #sudo aptitude install -y vsftpd

            sudo aptitude install -y filezilla

        ##image

            sudo aptitude install -y imagemagick
            sudo aptitude install -y imagemagick-doc
            sudo aptitude install -y dia
            sudo aptitude install -y gimp
            sudo aptitude install -y inkscape

        ##video

                sudo aptitude install -y vlc

            ##tesseract

                    sudo aptitude install -y tesseract-ocr

                    #MANUAL: find available languages

                        #apt-cache search tesseract-ocr-

                    #english

                        sudo aptitude install -y tesseract-ocr-eng

                #chinese hack

                    #sudo aptitude install -y tesseract-ocr-chi-sim #simplified chinese
                    #cd /usr/share/tesseract-ocr/tessdata
                    #sudo ln -s chi_sim.traineddata zho.traineddata

                sudo aptitude install -y cuneiform


            #handbreak:

                sudo add-apt-repository -y ppa:stebbins/handbrake-releases
                sudo aptitude install -y handbrake-cli
                #sudo aptitude install -y handbrake-gtk

            #vobsub2srt:

                sudo add-apt-repository -y ppa:ruediger-c-plusplus/vobsub2srt
                sudo aptitude update
                sudo aptitude install -y vobsub2srt

            sudo aptitude install -y mkvtools

        ##game

            ##getdeb

                #non launchapd ppa with lots of good games.

                    wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
                    sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu quantal-getdeb games" > /etc/apt/sources.list.d/getdeb.list'
                    sudo aptitude update
                    sudo aptitude install urbanterror
                    #sudo aptitude install worldofpadman

            sudo aptitude install -y nethack-console
            sudo aptitude install -y fortune
            sudo aptitude install -y cowsay
            sudo aptitude install -y robotfindskitten
            sudo aptitude install -y bsdgames
            sudo aptitude install -y greed
            sudo aptitude install -y ninvaders
            sudo aptitude install -y netrek-client-cow
            sudo aptitude install -y urban-terror
            sudo aptitude install -y golly
            sudo aptitude install -y gnotski

            ##dosbox

                sudo aptitude install -y dosbox

                ## MANUAL: get the sound working

                    #TODO get working

                        #pmidi -l
                        #vim ~/.dosbox/dosbox-*.conf

                    #put the port in:

                        #[midi]
                        #midiconfig=14:0

                    #sudo aptitude install -y pmidi

##launchpad ppas

    #you must first add ppas with `apt-add-repository`

        sudo add-apt-repository -y ppa:tualatrix/ppa && sudo aptitude update
            sudo aptitude install -y ubuntu-tweak

        sudo add-apt-repository -y ppa:atareao/atareao && sudo apt-get update
            sudo apt-get install my-weather-indicator

        sudo add-apt-repository -y ppa:flacon && sudo aptitude update
            sudo aptitude install -y flacon

    #gnome shell:

        sudo add-apt-repository -y ppa:gnome3-team/gnome3 && sudo aptitude update
            sudo aptitude install -y gnome-shell

##non launchpad ppas

    #you must first add ppas manually: