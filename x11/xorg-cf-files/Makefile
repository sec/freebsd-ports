PORTNAME=	xorg-cf-files
PORTVERSION=	1.0.8
PORTREVISION=	1
CATEGORIES=	x11

MAINTAINER=	x11@FreeBSD.org
COMMENT=	X.org cf files for use with imake builds

LICENSE=	MIT

USES=		tar:xz xorg-cat:util

NO_ARCH=	yes

post-patch:
		@${REINPLACE_CMD} 's|\(define ExtraXaw[^ ]*\) [$$].*|\1 /**/|' \
			${WRKSRC}/X11.tmpl

.include <bsd.port.mk>
