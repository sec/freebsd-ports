PORTNAME=		dotnet-host
DISTVERSION=	9.0.0
GH_ACCOUNT=		dotnet
GH_PROJECT=		runtime
DISTVERSIONPREFIX=	v
CATEGORIES=		lang devel

MAINTAINER=		arrowd@FreeBSD.org
COMMENT=		Open-source developer platform and a cross-platform runtime for cloud, mobile, desktop, and IoT apps. Contains dotnet host binary only.
WWW=			https://dot.net

LICENSE=		MIT

BUILD_DEPENDS=	bash:shells/bash \
				cmake:devel/cmake-core

USES=			llvm:noexport ssl

USE_GITHUB=		yes

DOTNET_ARCH=	${ARCH:S|amd64|x64|:C|aarch64|arm64|}

PLIST_FILES=	bin/dotnet \
				dotnet/LICENSE.TXT \
				dotnet/THIRD-PARTY-NOTICES.TXT \
				dotnet/dotnet

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} src/native/corehost/build.sh -ci -c Release

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/dotnet

	cp ${WRKSRC}/artifacts/bin/freebsd-${DOTNET_ARCH}.Release/corehost/dotnet \
		${WRKSRC}/LICENSE.TXT \
		${WRKSRC}/THIRD-PARTY-NOTICES.TXT \
		${STAGEDIR}${PREFIX}/dotnet/

	${ELFCTL} -e +noaslr ${STAGEDIR}${PREFIX}/dotnet/dotnet
	${RLN} ${STAGEDIR}${PREFIX}/dotnet/dotnet ${STAGEDIR}${PREFIX}/bin/dotnet

.include <bsd.port.mk>
