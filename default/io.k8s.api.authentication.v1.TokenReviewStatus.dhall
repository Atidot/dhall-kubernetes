{ audiences = ([] : Optional (List Text))
, authenticated = ([] : Optional (Bool))
, error = ([] : Optional (Text))
, user = ([] : Optional (../types/io.k8s.api.authentication.v1.UserInfo.dhall))
} : ../types/io.k8s.api.authentication.v1.TokenReviewStatus.dhall
