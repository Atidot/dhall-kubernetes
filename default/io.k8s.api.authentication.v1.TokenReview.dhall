\(_params : {metadata : (../types/io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall), spec : (../types/io.k8s.api.authentication.v1.TokenReviewSpec.dhall)}) ->
{ apiVersion = ("authentication.k8s.io/v1" : Text)
, kind = ("TokenReview" : Text)
, metadata = _params.metadata
, spec = _params.spec
, status = ([] : Optional (../types/io.k8s.api.authentication.v1.TokenReviewStatus.dhall))
} : ../types/io.k8s.api.authentication.v1.TokenReview.dhall
