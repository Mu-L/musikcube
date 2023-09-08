if (${GENERATE_DEB} MATCHES "true" AND CMAKE_SYSTEM_NAME MATCHES "Linux")
  if (${BUILD_STANDALONE} MATCHES "true")
    set(CPACK_PACKAGE_FILE_NAME "musikcube_linux_${musikcube_VERSION}_${PACKAGE_ARCHITECTURE}")
  else()
    set(DEB_MICROHTTPD_VERSION "10")
    set(DEB_LIBCURL_VERSION "3")
    set(DEB_AVUTIL_VERSION "55")
    set(DEB_AVFORMAT_VERSION "57")
    set(DEB_SWRESAMPLE_VERSION "2")
    set(DEB_NCURSES_VERSION "5")
    if (DEB_DISTRO MATCHES "buster")
      set(DEB_MICROHTTPD_VERSION "12")
      set(DEB_LIBCURL_VERSION "4")
      set(DEB_AVUTIL_VERSION "56")
      set(DEB_AVFORMAT_VERSION "58")
      set(DEB_SWRESAMPLE_VERSION "3")
    elseif (DEB_DISTRO MATCHES "bionic")
      set(DEB_MICROHTTPD_VERSION "12")
      set(DEB_LIBCURL_VERSION "4")
    elseif (DEB_DISTRO MATCHES "focal" OR DEB_DISTRO MATCHES "una")
      set(DEB_MICROHTTPD_VERSION "12")
      set(DEB_LIBCURL_VERSION "4")
      set(DEB_AVUTIL_VERSION "56")
      set(DEB_AVFORMAT_VERSION "58")
      set(DEB_SWRESAMPLE_VERSION "3")
      set(DEB_NCURSES_VERSION "6")
    elseif (DEB_DISTRO MATCHES "hirsute")
      set(DEB_MICROHTTPD_VERSION "12")
      set(DEB_LIBCURL_VERSION "4")
      set(DEB_AVUTIL_VERSION "56")
      set(DEB_AVFORMAT_VERSION "58")
      set(DEB_SWRESAMPLE_VERSION "3")
      set(DEB_NCURSES_VERSION "6")
    elseif (DEB_DISTRO MATCHES "impish" OR DEB_DISTRO MATCHES "bullseye")
      set(DEB_MICROHTTPD_VERSION "12")
      set(DEB_LIBCURL_VERSION "4")
      set(DEB_AVUTIL_VERSION "56")
      set(DEB_AVFORMAT_VERSION "58")
      set(DEB_SWRESAMPLE_VERSION "3")
      set(DEB_NCURSES_VERSION "6")
    endif()

    set(DEPENDENCIES "libmicrohttpd${DEB_MICROHTTPD_VERSION}, libcurl${DEB_LIBCURL_VERSION}, libogg0, libvorbis0a, libvorbisfile3, libncursesw${DEB_NCURSES_VERSION}, libasound2, libpulse0, pulseaudio, libmp3lame0, libev4, libopenmpt0, libssl1.1")
    set(DEPENDENCIES "${DEPENDENCIES}, libtag1v5, libavcodec-extra, libavutil${DEB_AVUTIL_VERSION}, libavformat${DEB_AVFORMAT_VERSION}, libswresample${DEB_SWRESAMPLE_VERSION}")

    set(CPACK_PACKAGE_FILE_NAME "musikcube_linux_${musikcube_VERSION}_${DEB_PLATFORM}_${DEB_DISTRO}_${PACKAGE_ARCHITECTURE}")
    set(CPACK_DEBIAN_PACKAGE_DEPENDS ${DEPENDENCIES})
    set(CPACK_RPM_PACKAGE_REQUIRES "libogg, libvorbis, ffmpeg-libs, ncurses, zlib, alsa-lib, pulseaudio-libs, openssl, libcurl, libmicrohttpd, lame, libev, taglib, libopenmpt")
  endif()

  set(CPACK_GENERATOR "DEB" "RPM")

  set(CPACK_PACKAGE_DESCRIPTION "musikcube, a terminal-based music player and library")
  set(CPACK_PACKAGE_VERSION_MAJOR "${musikcube_VERSION_MAJOR}")
  set(CPACK_PACKAGE_VERSION_MINOR "${musikcube_VERSION_MINOR}")
  set(CPACK_PACKAGE_VERSION_PATCH "${musikcube_VERSION_PATCH}")

  set(CPACK_DEBIAN_PACKAGE_MAINTAINER "casey langen")
  set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE ${PACKAGE_ARCHITECTURE})
  set(CPACK_DEBIAN_FILE_NAME "musikcube_${musikcube_VERSION_MAJOR}.${musikcube_VERSION_MINOR}.${musikcube_VERSION_PATCH}_${FRIENDLY_ARCHITECTURE_NAME}.deb")

  set(CPACK_RPM_PACKAGE_LICENSE "BSD-3-Clause")
  set(CPACK_RPM_PACKAGE_URL "https://www.musikcube.com")
  set(CPACK_RPM_PACKAGE_VERSION "${musikcube_VERSION_MAJOR}.${musikcube_VERSION_MINOR}.${musikcube_VERSION_PATCH}")
  set(CPACK_RPM_REQUIRES_EXCLUDE_FROM "^/.*$")
  set(CPACK_RPM_FILE_NAME "musikcube_${musikcube_VERSION_MAJOR}.${musikcube_VERSION_MINOR}.${musikcube_VERSION_PATCH}_${FRIENDLY_ARCHITECTURE_NAME}.rpm")
if (${PACKAGE_ARCHITECTURE} MATCHES "amd64")
    # debs use `amd64`, but rpm uses `x86_64`. both seem to agree on other architecture values.
    message(STATUS "[GeneratePackage] ${BoldYellow}set RPM architecture to x86_64${ColorReset}")
    set(CPACK_RPM_PACKAGE_ARCHITECTURE "x86_64")
  else()
    set(CPACK_RPM_PACKAGE_ARCHITECTURE ${PACKAGE_ARCHITECTURE})
  endif()

  include(CPack)
endif()