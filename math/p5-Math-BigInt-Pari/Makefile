PORTNAME=	Math-BigInt-Pari
PORTVERSION=	1.3016
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Use Math::Pari for Math::BigInt routines
WWW=		https://metacpan.org/release/Math-BigInt-Pari

LICENSE=	ART10 GPLv1+
LICENSE_COMB=	dual

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	p5-Math-BigInt>=2.005001:math/p5-Math-BigInt \
		p5-Math-Pari>=2.010709:math/p5-Math-Pari

USES=		perl5
USE_PERL5=	configure

NO_ARCH=	yes

.include <bsd.port.mk>
