# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sci-calculators/galculator/galculator-2.1.3.ebuild,v 1.3 2014/05/04 12:12:27 pacho Exp $

EAPI=5
GCONF_DEBUG=no

inherit eutils user

DESCRIPTION="Minimalistic automount tool for removable drives"
HOMEPAGE="http://github.com/alev-gentoo/automount/"
SRC_URI="https://github.com/alev-gentoo/automount/releases/download/${PVR}/${P}.tar.bz2"


LICENSE="MIT"
SLOT="0"
KEYWORDS="x86"

RDEPEND="
"
DEPEND="${RDEPEND}
	sys-fs/udev
"
DOCS="README.md"

pkg_postinst() {
	enewgroup storage
}

src_install() {
	into /usr
	dosbin automount
	insinto /lib/udev/rules.d
    newins automount-udev.rules 99-automount.rules
	dodoc README.md
}

