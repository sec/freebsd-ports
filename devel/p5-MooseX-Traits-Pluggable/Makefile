PORTNAME=	MooseX-Traits-Pluggable
PORTVERSION=	0.12
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Trait loading and resolution for Moose
WWW=		https://metacpan.org/release/MooseX-Traits-Pluggable

LICENSE=	ART10 GPLv1+
LICENSE_COMB=	dual

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	\
	p5-Moose>=0:devel/p5-Moose \
	p5-Class-Load>=0:devel/p5-Class-Load \
	p5-namespace-autoclean>=0:devel/p5-namespace-autoclean \
	p5-List-MoreUtils>=0:lang/p5-List-MoreUtils
TEST_DEPENDS=	p5-Test-Exception>=0:devel/p5-Test-Exception

USES=		perl5
USE_PERL5=	configure

NO_ARCH=	yes

.include <bsd.port.mk>
