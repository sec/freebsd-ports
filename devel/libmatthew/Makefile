PORTNAME=	libmatthew
DISTVERSION=	0.8.1
PORTREVISION=	1
CATEGORIES=	devel java
MASTER_SITES=	http://www.matthew.ath.cx/projects/java/
DISTNAME=	${PORTNAME}-java-${DISTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Selection of Java libraries by Matthew Johnson
WWW=		http://www.matthew.ath.cx/projects/java/

LICENSE=	EXPAT
LICENSE_NAME=	Expat License
LICENSE_FILE=	${WRKSRC}/COPYING
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

USES=		gmake java localbase:ldconfig
USE_LDCONFIG=	yes

MAKE_ENV=	JARDIR=${JAVAJARDIR} \
		JAVA_HOME=${JAVA_HOME} \
		LDSHAREFLAGS='-fpic -shared' \
		LIBDIR=${PREFIX}/lib

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/lib/*-java.so

.include <bsd.port.mk>
