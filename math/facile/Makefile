PORTNAME=	facile
PORTVERSION=	1.1.3
PORTREVISION=	4
CATEGORIES=	math
MASTER_SITES=	http://opti.recherche.enac.fr/facile/distrib/

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Functional Constraint Library
WWW=		http://www.recherche.enac.fr/log/facile/

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		gmake ocaml

HAS_CONFIGURE=	yes
ALL_TARGET=	compile

.include <bsd.port.options.mk>

.if ${ARCH} == powerpc
USE_BINUTILS=	yes
.endif

post-configure:
	${REINPLACE_CMD} -e "s,make,${MAKE_CMD},; \
		s,cp,${INSTALL_DATA},;\
		s,mkdir,${MKDIR}," ${WRKSRC}/Makefile
	${REINPLACE_CMD} -e "s,${LOCALBASE},${STAGEDIR}${PREFIX}," \
		${WRKSRC}/config_Makefile

.include <bsd.port.mk>
