PORTNAME=	cyclonedx-python-lib
PORTVERSION=	10.1.0
CATEGORIES=	textproc python
MASTER_SITES=	PYPI \
		https://github.com/CycloneDX/cyclonedx-python-lib/releases/download/v${PORTVERSION}/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	cyclonedx_python_lib-${PORTVERSION}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Library for producing CycloneDX SBOM (Software Bill of Materials) files
WWW=		https://github.com/CycloneDX/cyclonedx-python-lib

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}poetry-core>=1.0.0:devel/py-poetry-core@${PY_FLAVOR}
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}license-expression>=30<31:textproc/py-license-expression@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}packageurl-python>=0.11<2:textproc/py-packageurl-python@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}py-serializable>=2.0.0<3:devel/py-py-serializable@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}sortedcontainers>=2.4.0<3:devel/py-sortedcontainers@${PY_FLAVOR}

USES=		python
USE_PYTHON=	autoplist concurrent pep517

NO_ARCH=	yes

OPTIONS_DEFINE=	JSON_VALIDATION VALIDATION XML_VALIDATION
JSON_VALIDATION_DESC=	JSON validation
VALIDATION_DESC=	JSON and XML validation
XML_VALIDATION_DESC=	XML validation

JSON_VALIDATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}jsonschema>=4.18<5:devel/py-jsonschema@${PY_FLAVOR}
VALIDATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}jsonschema>=4.18<5:devel/py-jsonschema@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}lxml>=4<6:devel/py-lxml@${PY_FLAVOR}
XML_VALIDATION_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}lxml>=4<6:devel/py-lxml@${PY_FLAVOR}

.include <bsd.port.mk>
