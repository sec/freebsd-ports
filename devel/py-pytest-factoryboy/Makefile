PORTNAME=	pytest-factoryboy
PORTVERSION=	2.5.0
PORTREVISION=	2
CATEGORIES=	devel python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	meka@tilda.center
COMMENT=	Factory approach to testing with the dependency injection
WWW=		https://github.com/pytest-dev/pytest-factoryboy

LICENSE=	MIT

MY_DEPENDS=	${PYTHON_PKGNAMEPREFIX}inflection>=0:devel/py-inflection@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}factory-boy>=0:devel/py-factory-boy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pytest>=0:devel/py-pytest@${PY_FLAVOR}
BUILD_DEPENDS=	${MY_DEPENDS}
RUN_DEPENDS=	${MY_DEPENDS}
TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-dateutil>=0:devel/py-python-dateutil@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}text-unidecode>=0:converters/py-text-unidecode@${PY_FLAVOR}

USES=		python
USE_PYTHON=	autoplist concurrent distutils

NO_ARCH=	yes

# Tests not shipped with the distribution
# Issue: https://github.com/pytest-dev/pytest-factoryboy/issues/170

.include <bsd.port.mk>
