# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sci-calculators/galculator/galculator-2.1.2.ebuild,v 1.6 2014/02/22 22:37:52 pacho Exp $

EAPI=5
GCONF_DEBUG=no

inherit eutils

DESCRIPTION="Command line toolkit for working with Arduino hardware"
HOMEPAGE="http://inotool.org/"
SRC_URI="https://github.com/alev-gentoo/ino/releases/download/${PVR}/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="x86"
IUSE=""

RDEPEND="dev-lang/python-exec
		dev-python/configobj
		dev-python/jinja
		dev-python/glob2
		dev-python/pyserial"
DEPEND="${RDEPEND}"

DOCS="README.rst"

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install
}
