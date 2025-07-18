PORTNAME=	cinnamon-control-center
PORTVERSION=	5.4.6
PORTREVISION=	5
CATEGORIES=	sysutils gnome
DIST_SUBDIR=	gnome

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Control center for Cinnamon
WWW=		https://github.com/linuxmint/cinnamon-control-center

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

BROKEN=		error: too few arguments to function call, expected 6, have 5

BUILD_DEPENDS=	cinnamon-settings-daemon>=1.0.0:sysutils/cinnamon-settings-daemon \
		iso-codes>0:misc/iso-codes
LIB_DEPENDS=	libcinnamon-desktop.so:x11/cinnamon-desktop \
		libcinnamon-menu-3.so:x11/cinnamon-menus \
		libdbus-1.so:devel/dbus \
		libfontconfig.so:x11-fonts/fontconfig \
		libfreetype.so:print/freetype2 \
		libnotify.so:devel/libnotify \
		libpolkit-gobject-1.so:sysutils/polkit \
		libxklavier.so:x11/libxklavier \
		libharfbuzz.so:print/harfbuzz \
		libupower-glib.so:sysutils/upower \
		libgudev-1.0.so:devel/libgudev
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		gettext gnome meson pkgconfig python:build shebangfix xorg
USE_GNOME=	cairo gdkpixbuf glib20 gtk30 intltool libgnomekbd libxml2
USE_XORG=	x11 xfixes xorgproto sm

USE_GITHUB=	yes
GH_ACCOUNT=	linuxmint

USE_LDCONFIG=	yes

MESON_ARGS=	-Dnetworkmanager=false \
		-Dmodemmanager=false

SHEBANG_GLOB=	*.py

GLIB_SCHEMAS=	org.cinnamon.control-center.display.gschema.xml

OPTIONS_DEFINE=	COLORD ONLINEACCOUNTS WACOM
OPTIONS_DEFAULT=COLORD ONLINEACCOUNTS WACOM
OPTIONS_SUB=	yes

ONLINEACCOUNTS_DESC=	GNOME Online Accounts panel support
WACOM_DESC=	Wacom management panel support

COLORD_LIB_DEPENDS=	libcolord.so:graphics/colord
COLORD_MESON_TRUE=	color

ONLINEACCOUNTS_LIB_DEPENDS=	libgoa-1.0.so:net/gnome-online-accounts
ONLINEACCOUNTS_MESON_TRUE=	onlineaccounts

WACOM_LIB_DEPENDS=	libwacom.so:x11/libwacom
WACOM_USE=		xorg=xi
WACOM_MESON_TRUE=	wacom

.include <bsd.port.mk>
