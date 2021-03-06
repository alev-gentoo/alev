# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sci-calculators/galculator/galculator-2.1.3.ebuild,v 1.3 2014/05/04 12:12:27 pacho Exp $

EAPI=5
GCONF_DEBUG=no

inherit gnome2

DESCRIPTION="GTK+ based algebraic and RPN calculator"
HOMEPAGE="http://galculator.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~ppc x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos"
IUSE="-quadmath"

RDEPEND="
	dev-libs/glib:2
	x11-libs/gtk+:3
	x11-libs/pango
"
DEPEND="${RDEPEND}
	dev-util/intltool
	sys-devel/flex
	sys-devel/gettext
	virtual/pkgconfig
"

src_configure() {
	gnome2_src_configure \
		$(use_enable quadmath)
}

DOCS="AUTHORS ChangeLog NEWS README THANKS doc/shortcuts"
