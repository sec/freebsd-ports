PORTNAME=	collective.checkdocs
PORTVERSION=	0.2
PORTREVISION=	1
CATEGORIES=	textproc devel python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	egypcio@FreeBSD.org
COMMENT=	View and validate restructured text in package's long_description
WWW=		https://github.com/collective/collective.checkdocs

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}docutils>=0.15:textproc/py-docutils@${PY_FLAVOR}

USES=		python zip
USE_PYTHON=	autoplist concurrent distutils

NO_ARCH=	yes

.include <bsd.port.mk>
