PORTNAME=	pysasl
DISTVERSION=	0.10.0
PORTREVISION=	1
CATEGORIES=	mail security
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nc@FreeBSD.org
COMMENT=	Pure Python SASL client and server library
WWW=		https://pypi.org/project/pysasl/

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE.md

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}typing-extensions>=0:devel/py-typing-extensions@${PY_FLAVOR}

USES=		python
USE_PYTHON=	autoplist distutils
NO_ARCH=	yes

OPTIONS_DEFINE=		PASSLIB
OPTIONS_DEFAULT=	PASSLIB

PASSLIB_DESC=	Password hashing support

PASSLIB_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}passlib>=0:security/py-passlib@${PY_FLAVOR}

.include <bsd.port.mk>
