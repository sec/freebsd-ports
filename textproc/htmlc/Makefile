PORTNAME=	htmlc
PORTVERSION=	2.21.0
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	http://htmlc.inria.fr/ \
		http://caml.inria.fr/distrib/bazar-ocaml/htmlc/

MAINTAINER=	beyert@cs.ucr.edu
COMMENT=	Text file generator
WWW=		http://htmlc.inria.fr/eng.htm

BUILD_DEPENDS=	ocamlc:lang/ocaml

USES=		gmake tar:tgz
HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix ${LOCALBASE}

PLIST_FILES=	bin/htmlc bin/htmlc.byt share/htmlc/env
PORTDOCS=	LICENSE INSTALL README JoeCaml.gif rocq.gif copyright-eng.htm \
		copyright-fra.htm eng.htm fra.htm index.htm

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${ARCH} == powerpc
USE_BINUTILS=	yes
.endif

post-patch:
	${RM} ${WRKSRC}/doc/Makefile
	${TOUCH} ${WRKSRC}/doc/Makefile
	${ECHO} "all:" > ${WRKSRC}/doc/Makefile
	${REINPLACE_CMD} 's|-warn-error A||g' ${WRKSRC}/config/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/compiler/htmlc ${STAGEDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/compiler/htmlc.byt ${STAGEDIR}${PREFIX}/bin
	@${MKDIR} ${STAGEDIR}${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/config/env ${STAGEDIR}${DATADIR}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/LICENSE ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/INSTALL ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/README ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/JoeCaml.gif ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/rocq.gif ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/copyright-eng.htm ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/copyright-fra.htm ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/eng.htm ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/fra.htm ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/index.htm ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
