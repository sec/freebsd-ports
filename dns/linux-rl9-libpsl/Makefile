PORTNAME=	libpsl
PORTVERSION=	0.21.1
DISTVERSIONSUFFIX=	-5.el9
PORTREVISION=	1
CATEGORIES=	dns devel linux

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	C library to handle the Public Suffix List (Rocky Linux ${LINUX_DIST_VER})
WWW=		https://github.com/rockdaboot/libpsl

LICENSE=	MIT

USES=		linux:rl9
USE_LDCONFIG=	yes
USE_LINUX=	icu
USE_LINUX_RPM=	yes
WANT_LINUX32=	yes

DESCR=		${PORTSDIR}/${PKGCATEGORY}/${PORTNAME}/pkg-descr

.include <bsd.port.mk>
