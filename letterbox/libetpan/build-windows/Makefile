# Makefile.in generated by automake 1.10 from Makefile.am.
# build-windows/Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
# 2003, 2004, 2005, 2006  Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



# libEtPan! -- a mail stuff library
#
# Copyright (C) 2007 g10 Code GmbH
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. Neither the name of the libEtPan! project nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHORS AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.

# libEtPan! -- a mail stuff library
#
# Copyright (C) 2007 g10 Code GmbH
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. Neither the name of the libEtPan! project nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHORS AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.

# Description of the build system
# ===============================

# The build system uses automake and autoconf mostly in the usual way.
# A typical work flow for working with the SVN version would be:

# $ autoreconf
# $ ./configure --enable-maintainer-mode
# $ make

# All Makefile.am files must contain:

# include $(top_srcdir)/rules.mk

# If BUILT_SOURCES are desired, they need to be defined *after* the
# above include by a += directive, for example:

# BUILT_SOURCES += foo.h

# This is because rules.mk defines BUILT_SOURCES for its own purposes.

# Header Link Farm
# ================

# The public header files of libetpan are scattered throughout the
# source tree and defined by libetpaninclude_HEADERS automake variables.
# (The corresponding libetpanincludedir is defined in rules.mk).  Before
# building anything else in the project, we prepare a header link farm
# in include/libetpan (this directory will be created).  The header link
# farm is generated automatically when any Makefile (or other
# configure-generated file) is modified, for example by editing
# Makefile.am in maintainer mode.  This ensures that all modifications
# to libetpaninclude_HEADERS variables are picked up properly.

# The header link farm is built using the BUILT_SOURCES mechanism of
# automake, which means that it will only be built by "make all", "make
# check" and "make install".  This means that eithr of these commands
# needs to be used before targeting individual project files works.  If
# the header link farm should be generated or updated manually, the
# following command can be used in the *top-level build directory*:

# $ rm stamp-prepare; make stamp-prepare

pkgdatadir = $(datadir)/libetpan
pkglibdir = $(libdir)/libetpan
pkgincludedir = $(includedir)/libetpan
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = i386-apple-darwin10.2.0
host_triplet = i386-apple-darwin10.2.0
DIST_COMMON = $(srcdir)/Makefile.am $(srcdir)/Makefile.in \
	$(top_srcdir)/rules.mk
subdir = build-windows
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = $(top_builddir)/config.h
CONFIG_CLEAN_FILES =
SOURCES =
DIST_SOURCES =
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
ACLOCAL = ${SHELL} /Volumes/srv/Users/gus/Desktop/libetpan/missing --run aclocal-1.10
AMTAR = ${SHELL} /Volumes/srv/Users/gus/Desktop/libetpan/missing --run tar
API_COMPATIBILITY = 13
API_CURRENT = 14
API_REVISION = 3
API_VERSION = 14:3:1
AR = ar
AS = as
AUTOCONF = ${SHELL} /Volumes/srv/Users/gus/Desktop/libetpan/missing --run autoconf
AUTOHEADER = ${SHELL} /Volumes/srv/Users/gus/Desktop/libetpan/missing --run autoheader
AUTOMAKE = ${SHELL} /Volumes/srv/Users/gus/Desktop/libetpan/missing --run automake-1.10
AWK = awk
BUILD_FILEVERSION = 0,58,0,0
BUILD_REVISION = 0
BUILD_TIMESTAMP = 2010-02-02T12:20-0800
CC = gcc
CCDEPMODE = depmode=gcc3
CFLAGS = -g -O2 -O2 -g -W -Wall
CPP = gcc -E
CPPFLAGS =  -DDEBUG -D_REENTRANT 
CXX = g++
CXXCPP = g++ -E
CXXDEPMODE = depmode=gcc3
CXXFLAGS = -g -O2
CYGPATH_W = echo
DBLIB = 
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DLLTOOL = dlltool
DSYMUTIL = dsymutil
DUMPBIN = 
ECHO_C = \c
ECHO_N = 
ECHO_T = 
EGREP = /usr/bin/grep -E
EXEEXT = 
FGREP = /usr/bin/grep -F
GNUTLSLIB = 
GREP = /usr/bin/grep
INSTALL = $(SHELL) $(top_srcdir)/install-sh -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
LD = /usr/libexec/gcc/i686-apple-darwin10/4.2.1/ld
LDFLAGS =  -lcurl -lssl -lcrypto -Wl,-weak-lldap -dynamic -Os -pipe -g0 -Wno-system-headers -Wl,-search_paths_first -Wl,-weak-lgssapi_krb5 -Wl,-weak-lkrb5 -Wl,-weak-lk5crypto -Wl,-weak-lcom_err -Wl,-weak-lresolv -lssl -lcrypto -lz -lz -lexpat
LIBICONV = -liconv
LIBOBJS = 
LIBS = 
LIBSUFFIX = 
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIPO = lipo
LN_S = ln -s
LTLIBOBJS = 
MAINT = #
MAKEINFO = ${SHELL} /Volumes/srv/Users/gus/Desktop/libetpan/missing --run makeinfo
MKDIR_P = .././install-sh -c -d
NM = /usr/bin/nm
NMEDIT = nmedit
OBJDUMP = objdump
OBJEXT = o
OTOOL = otool
OTOOL64 = :
PACKAGE = libetpan
PACKAGE_BUGREPORT = libetpan-devel@lists.sourceforge.net
PACKAGE_NAME = libetpan
PACKAGE_STRING = libetpan 0.58
PACKAGE_TARNAME = libetpan
PACKAGE_VERSION = 0.58
PATH_SEPARATOR = :
RANLIB = ranlib
REENTRANT = 1
SASLLIBS = -lsasl2 
SED = /usr/bin/sed
SET_MAKE = 
SHELL = /bin/sh
SSLLIBS = -lssl -lcrypto 
STRIP = strip
VERSION = 0.58
VERSION_MAJOR = 0
VERSION_MINOR = 58
abs_builddir = /Volumes/srv/Users/gus/Desktop/libetpan/build-windows
abs_srcdir = /Volumes/srv/Users/gus/Desktop/libetpan/build-windows
abs_top_builddir = /Volumes/srv/Users/gus/Desktop/libetpan
abs_top_srcdir = /Volumes/srv/Users/gus/Desktop/libetpan
ac_ct_CC = gcc
ac_ct_CXX = g++
ac_ct_DUMPBIN = 
am__include = include
am__leading_dot = .
am__quote = 
am__tar = ${AMTAR} chof - "$$tardir"
am__untar = ${AMTAR} xf -
bindir = ${exec_prefix}/bin
build = i386-apple-darwin10.2.0
build_alias = 
build_cpu = i386
build_os = darwin10.2.0
build_vendor = apple
builddir = .
cfg_files =  /Volumes/srv/Users/gus/Desktop/libetpan/libetpan-config /Volumes/srv/Users/gus/Desktop/libetpan/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/build-windows/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/include/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/bsd/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/windows/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/data-types/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/feed/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/imap/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/imf/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/maildir/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/mbox/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/mh/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/mime/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/nntp/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/pop3/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/low-level/smtp/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/data-message/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/db/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/feed/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/hotmail/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/imap/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/maildir/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/mbox/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/mh/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/mime-message/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/nntp/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/implementation/pop3/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/interface/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/driver/tools/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/main/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/main/libetpan_version.h /Volumes/srv/Users/gus/Desktop/libetpan/src/engine/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/src/versioninfo.rc /Volumes/srv/Users/gus/Desktop/libetpan/doc/Makefile /Volumes/srv/Users/gus/Desktop/libetpan/tests/Makefile
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
host = i386-apple-darwin10.2.0
host_alias = 
host_cpu = i386
host_os = darwin10.2.0
host_vendor = apple
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = $(SHELL) /Volumes/srv/Users/gus/Desktop/libetpan/install-sh
libcurlconfig = /usr/bin/curl-config
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
lt_ECHO = /bin/echo
mandir = ${datarootdir}/man
mkdir_p = $(top_builddir)/./install-sh -c -d
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /usr/local
program_transform_name = s,x,x,
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
sysconfdir = ${prefix}/etc
target_alias = 
top_builddir = ..
top_srcdir = ..

# Public header files are defined by libetpaninclude_HEADERS variables.
etpanincludedir = $(includedir)/libetpan

# We add a recursive target "prepare" which creates the desired links
# in include/libetpan from libetpan include files scattered throughout
# the source.  See also README.rules.

# We hook into the BUILT_SOURCES mechanism of automake, see Section
# "Built sources" in the automake manual for details.
BUILT_SOURCES = $(top_builddir)/stamp-prepare
EXTRA_DIST = libetpan/libetpan.vcproj README.txt StdAfx.h	\
	build_headers.bat build_headers.list libetpan-config.h	\
	libetpan.sln libetpan_version.h readmsg/readmsg.vcproj	\
	smtpsend/smtpsend.vcproj

all: $(BUILT_SOURCES)
	$(MAKE) $(AM_MAKEFLAGS) all-am

.SUFFIXES:
$(srcdir)/Makefile.in: # $(srcdir)/Makefile.am $(top_srcdir)/rules.mk $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh \
		&& exit 0; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --foreign  build-windows/Makefile'; \
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --foreign  build-windows/Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh

$(top_srcdir)/configure: # $(am__configure_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(ACLOCAL_M4): # $(am__aclocal_m4_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs
tags: TAGS
TAGS:

ctags: CTAGS
CTAGS:


distdir: $(DISTFILES)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -pR $(srcdir)/$$file $(distdir)$$dir || exit 1; \
	    fi; \
	    cp -pR $$d/$$file $(distdir)$$dir || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: $(BUILT_SOURCES)
	$(MAKE) $(AM_MAKEFLAGS) check-am
all-am: Makefile
installdirs:
install: $(BUILT_SOURCES)
	$(MAKE) $(AM_MAKEFLAGS) install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
	-test -z "$(BUILT_SOURCES)" || rm -f $(BUILT_SOURCES)
clean: clean-am

clean-am: clean-generic clean-libtool mostlyclean-am

distclean: distclean-am
	-rm -f Makefile
distclean-am: clean-am distclean-generic

dvi: dvi-am

dvi-am:

html: html-am

info: info-am

info-am:

install-data-am:

install-dvi: install-dvi-am

install-exec-am:

install-html: install-html-am

install-info: install-info-am

install-man:

install-pdf: install-pdf-am

install-ps: install-ps-am

installcheck-am:

maintainer-clean: maintainer-clean-am
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic mostlyclean-libtool

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am:

.MAKE: install-am install-strip

.PHONY: all all-am check check-am clean clean-generic clean-libtool \
	distclean distclean-generic distclean-libtool distdir dvi \
	dvi-am html html-am info info-am install install-am \
	install-data install-data-am install-dvi install-dvi-am \
	install-exec install-exec-am install-html install-html-am \
	install-info install-info-am install-man install-pdf \
	install-pdf-am install-ps install-ps-am install-strip \
	installcheck installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-generic \
	mostlyclean-libtool pdf pdf-am ps ps-am uninstall uninstall-am


# The stamp file depends on all files generated by configure.  This
# naturally includes all Makefiles which define
# libetpaninclude_HEADERS variables for public header files, which are
# the files we want.  There are some more files in this list, but we
# don't mind regenerating the header link farm a bit more often than
# necessary.  Usually you won't notice a difference as
# configure-generated files are updated very rarely.
$(top_builddir)/stamp-prepare: $(cfg_files)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) stamp-prepare-target
	touch $(top_builddir)/stamp-prepare

# This target should only be invoked in the top level directory (ie
# indirectly through $(top_builddir)/stamp-prepare).  It is
# responsible for updating the header link farm.  First, the header
# link farm is deleted by invoking the clean target in the include
# directory.  Then the header link farm is (re-)generated by
# exploiting the recursive targets mechanism provided by automake.
# Note that this is exploiting automake internals (automake currently
# provides no official hooks for recursive targets).
stamp-prepare-target: $(cfg_files)
	cd include && $(MAKE) $(AM_MAKEFLAGS) clean
	$(MAKE) $(AM_MAKEFLAGS) RECURSIVE_TARGETS=prepare-recursive prepare
	touch stamp-prepare

# Leaf directories (without SUBDIRS) do not have a target
# $(RECURSIVE_TARGETS), so we need to terminate prepare-recursive for
# them here.
prepare-recursive:

# The standard prepare target first recurses, and then calls the
# individual rules.
prepare: prepare-recursive prepare-am

# The local prepare rules are first rules internal to this file
# rules.mk, and second rules local to a single Makefile.am file.  The
# internal rules here create symbolic links for each installed public
# header file of libetpan under $(top_builddir)/include/libetpan/.
prepare-am: prepare-local
	@if test "$(etpaninclude_HEADERS)" != ""; then \
          echo "$(mkinstalldirs) $(top_builddir)/include/libetpan/"; \
          $(mkinstalldirs) $(top_builddir)/include/libetpan/;\
	  echo "cd $(top_builddir)/include/libetpan/"; \
	  cd $(top_builddir)/include/libetpan/ \
	  && for hdr in $(etpaninclude_HEADERS) list_end; do \
           if test $${hdr} != list_end; then \
	         if test -e ../../$(subdir)/$${hdr}; then \
	           echo "$(LN_S) -f ../../$(subdir)/$${hdr} ."; \
	           $(LN_S) -f ../../$(subdir)/$${hdr} .; \
             else \
	           echo "$(LN_S) -f ../../$(subdir)/$(srcdir)/$${hdr} ."; \
	           $(LN_S) -f ../../$(subdir)/$(srcdir)/$${hdr} .; \
             fi; \
           fi; \
	     done; \
	fi

# Use this target to extend the prepare rules in a single Makefile.am.
prepare-local:

#  Copyright 2007 g10 Code GmbH

#  This file is free software; as a special exception the author gives
#  unlimited permission to copy and/or distribute it, with or without
#  modifications, as long as this notice is preserved.

#  This file is distributed in the hope that it will be useful, but
#  WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
#  implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
