PORTNAME=	posix
PORTVERSION=	36.3
DISTVERSIONPREFIX=	v
CATEGORIES=	devel
PKGNAMEPREFIX=	${LUA_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Lua bindings for POSIX APIs
WWW=		https://github.com/luaposix/luaposix

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${LUA_PKGNAMEPREFIX}stdlib-normalize>=0:devel/lua-stdlib-normalize@${LUA_FLAVOR}

USES=		lua:52+,module shebangfix

USE_GITHUB=	yes
GH_ACCOUNT=	luaposix
GH_PROJECT=	luaposix

SHEBANG_FILES=	build-aux/luke

do-build:
	@cd ${WRKSRC} && build-aux/luke all CFLAGS="${CFLAGS}" LUA="${LOCALBASE}/bin/${LUA_CMD}" LUA_INCDIR="${LUA_INCDIR}" PREFIX="${PREFIX}" version="${PORTVERSION}"

do-install:
	cd ${WRKSRC} && build-aux/luke install INST_LIBDIR="${STAGEDIR}${LUA_MODLIBDIR}" INST_LUADIR="${STAGEDIR}${LUA_MODSHAREDIR}"

post-install:
	${FIND} ${STAGEDIR}${LUA_MODLIBDIR} -name '*.so' -exec ${STRIP_CMD} {} +

.include <bsd.port.mk>
