# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker

DESCRIPTION="Hierarchical note taking app for personal knowledge bases"
HOMEPAGE="https://github.com/TriliumNext/Trilium"
SRC_URI="https://github.com/TriliumNext/Trilium/releases/download/v${PV}/TriliumNotes-v${PV}-linux-x64.deb"
S="${WORKDIR}"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

src_install() {
	insinto /opt
	doins -r "${WORKDIR}/usr/lib/trilium"

	insinto /usr/share
	doins -r "${WORKDIR}/usr/share/applications"
	doins -r "${WORKDIR}/usr/share/pixmaps"
	dodoc "${WORKDIR}/usr/share/doc/trilium/copyright"

	newbin - trilium <<-EOF
		#!/bin/sh
		exec ${EPREFIX}/opt/trilium/trilium "\${@}"
	EOF
	fperms +x /opt/trilium/trilium usr/bin/trilium /usr/share/applications/trilium.desktop
}

pkg_postinst() {
	elog "Finished installing Trilium"
}
