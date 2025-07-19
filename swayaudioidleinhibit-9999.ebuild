# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="SwayAudioIdleInhibit"
HOMEPAGE="https://github.com/ErikReider/SwayAudioIdleInhibit"

inherit meson

if [[ ${PV} == *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/deprecated-dot/SwayAudioIdleInhibit"
else
	SRC_URI="https://github.com/ErikReider/SwayAudioIdleInhibit/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="
	media-libs/libpulse
	dev-libs/wayland
	dev-libs/wayland-protocols
"

DEPEND="${RDEPEND}"

PATCHES=(
)
