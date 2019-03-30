module Dhall.Kubernetes.Data where

import           Data.Set               (Set)
import qualified Data.Set               as Set
import           Dhall.Kubernetes.Types


-- | List of objects that have issues with cyclic imports
objectsWithCyclicImports :: Set ModelName
objectsWithCyclicImports = Set.fromList $ ModelName <$>
  [ "io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinition"
  , "io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinitionList"
  , "io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinitionSpec"
  , "io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceValidation"
  , "io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinitionVersion"
  , "io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps"
  ]


-- | List of objects that we don't include in the defaults and types records.
--   The reason why we remove some is because of name clashes across versions.
--   So usually the rule for picking the object to keep is "the most recent"
excludedModels :: Set ModelName
excludedModels = Set.fromList $ ModelName <$>
  [ "io.k8s.kube-aggregator.pkg.apis.apiregistration.v1beta1.APIService"
  , "io.k8s.kube-aggregator.pkg.apis.apiregistration.v1beta1.APIServiceCondition"
  , "io.k8s.kube-aggregator.pkg.apis.apiregistration.v1beta1.APIServiceList"
  , "io.k8s.kube-aggregator.pkg.apis.apiregistration.v1beta1.APIServiceSpec"
  , "io.k8s.kube-aggregator.pkg.apis.apiregistration.v1beta1.APIServiceStatus"
  , "io.k8s.api.rbac.v1alpha1.AggregationRule"
  , "io.k8s.api.rbac.v1beta1.AggregationRule"
  , "io.k8s.api.extensions.v1beta1.AllowedFlexVolume"
  , "io.k8s.api.extensions.v1beta1.AllowedHostPath"
  , "io.k8s.api.rbac.v1alpha1.ClusterRole"
  , "io.k8s.api.rbac.v1beta1.ClusterRole"
  , "io.k8s.api.rbac.v1alpha1.ClusterRoleBinding"
  , "io.k8s.api.rbac.v1beta1.ClusterRoleBinding"
  , "io.k8s.api.rbac.v1alpha1.ClusterRoleBindingList"
  , "io.k8s.api.rbac.v1beta1.ClusterRoleBindingList"
  , "io.k8s.api.rbac.v1beta1.ClusterRoleBindingList"
  , "io.k8s.api.rbac.v1alpha1.ClusterRoleList"
  , "io.k8s.api.rbac.v1beta1.ClusterRoleList"
  , "io.k8s.api.apps.v1beta1.ControllerRevision"
  , "io.k8s.api.apps.v1beta2.ControllerRevision"
  , "io.k8s.api.apps.v1beta1.ControllerRevisionList"
  , "io.k8s.api.apps.v1beta2.ControllerRevisionList"
  , "io.k8s.api.batch.v1beta1.CronJob"
  , "io.k8s.api.batch.v1beta1.CronJobList"
  , "io.k8s.api.batch.v1beta1.CronJobSpec"
  , "io.k8s.api.batch.v1beta1.CronJobStatus"
  , "io.k8s.api.autoscaling.v1.CrossVersionObjectReference"
  , "io.k8s.api.autoscaling.v2beta1.CrossVersionObjectReference"
  , "io.k8s.api.apps.v1beta2.DaemonSet"
  , "io.k8s.api.extensions.v1beta1.DaemonSet"
  , "io.k8s.api.apps.v1beta2.DaemonSetCondition"
  , "io.k8s.api.extensions.v1beta1.DaemonSetCondition"
  , "io.k8s.api.apps.v1beta2.DaemonSetList"
  , "io.k8s.api.extensions.v1beta1.DaemonSetList"
  , "io.k8s.api.apps.v1beta2.DaemonSetSpec"
  , "io.k8s.api.extensions.v1beta1.DaemonSetSpec"
  , "io.k8s.api.apps.v1beta2.DaemonSetStatus"
  , "io.k8s.api.extensions.v1beta1.DaemonSetStatus"
  , "io.k8s.api.apps.v1beta2.DaemonSetUpdateStrategy"
  , "io.k8s.api.extensions.v1beta1.DaemonSetUpdateStrategy"
  , "io.k8s.api.apps.v1beta1.Deployment"
  , "io.k8s.api.apps.v1beta2.Deployment"
  , "io.k8s.api.extensions.v1beta1.Deployment"
  , "io.k8s.api.apps.v1beta1.DeploymentCondition"
  , "io.k8s.api.apps.v1beta2.DeploymentCondition"
  , "io.k8s.api.extensions.v1beta1.DeploymentCondition"
  , "io.k8s.api.apps.v1beta1.DeploymentList"
  , "io.k8s.api.apps.v1beta2.DeploymentList"
  , "io.k8s.api.extensions.v1beta1.DeploymentList"
  , "io.k8s.api.extensions.v1beta1.DeploymentRollback"
  , "io.k8s.api.apps.v1beta1.DeploymentSpec"
  , "io.k8s.api.apps.v1beta2.DeploymentSpec"
  , "io.k8s.api.extensions.v1beta1.DeploymentSpec"
  , "io.k8s.api.apps.v1beta1.DeploymentStatus"
  , "io.k8s.api.apps.v1beta2.DeploymentStatus"
  , "io.k8s.api.extensions.v1beta1.DeploymentStatus"
  , "io.k8s.api.apps.v1beta1.DeploymentStrategy"
  , "io.k8s.api.apps.v1beta2.DeploymentStrategy"
  , "io.k8s.api.extensions.v1beta1.DeploymentStrategy"
  , "io.k8s.api.events.v1beta1.Event"
  , "io.k8s.api.events.v1beta1.EventList"
  , "io.k8s.api.events.v1beta1.EventSeries"
  , "io.k8s.api.autoscaling.v2beta1.ExternalMetricSource"
  , "io.k8s.api.autoscaling.v2beta1.ExternalMetricStatus"
  , "io.k8s.api.extensions.v1beta1.FSGroupStrategyOptions"
  , "io.k8s.api.autoscaling.v1.HorizontalPodAutoscaler"
  , "io.k8s.api.autoscaling.v2beta1.HorizontalPodAutoscaler"
  , "io.k8s.api.autoscaling.v2beta1.HorizontalPodAutoscalerCondition"
  , "io.k8s.api.autoscaling.v1.HorizontalPodAutoscalerList"
  , "io.k8s.api.autoscaling.v2beta1.HorizontalPodAutoscalerList"
  , "io.k8s.api.autoscaling.v1.HorizontalPodAutoscalerSpec"
  , "io.k8s.api.autoscaling.v2beta1.HorizontalPodAutoscalerSpec"
  , "io.k8s.api.autoscaling.v1.HorizontalPodAutoscalerStatus"
  , "io.k8s.api.autoscaling.v2beta1.HorizontalPodAutoscalerStatus"
  , "io.k8s.api.extensions.v1beta1.HostPortRange"
  , "io.k8s.api.extensions.v1beta1.IDRange"
  , "io.k8s.api.extensions.v1beta1.IPBlock"
  , "io.k8s.api.admissionregistration.v1alpha1.Initializer"
  , "io.k8s.api.batch.v1beta1.JobTemplateSpec"
  , "io.k8s.api.authorization.v1beta1.LocalSubjectAccessReview"
  , "io.k8s.api.autoscaling.v2beta1.MetricSpec"
  , "io.k8s.api.autoscaling.v2beta1.MetricStatus"
  , "io.k8s.api.extensions.v1beta1.NetworkPolicy"
  , "io.k8s.api.extensions.v1beta1.NetworkPolicyEgressRule"
  , "io.k8s.api.extensions.v1beta1.NetworkPolicyIngressRule"
  , "io.k8s.api.extensions.v1beta1.NetworkPolicyList"
  , "io.k8s.api.extensions.v1beta1.NetworkPolicyPeer"
  , "io.k8s.api.extensions.v1beta1.NetworkPolicyPort"
  , "io.k8s.api.extensions.v1beta1.NetworkPolicySpec"
  , "io.k8s.api.authorization.v1beta1.NonResourceAttributes"
  , "io.k8s.api.authorization.v1beta1.NonResourceRule"
  , "io.k8s.api.autoscaling.v2beta1.ObjectMetricSource"
  , "io.k8s.api.autoscaling.v2beta1.ObjectMetricStatus"
  , "io.k8s.api.extensions.v1beta1.PodSecurityPolicy"
  , "io.k8s.api.extensions.v1beta1.PodSecurityPolicyList"
  , "io.k8s.api.extensions.v1beta1.PodSecurityPolicySpec"
  , "io.k8s.api.autoscaling.v2beta1.PodsMetricSource"
  , "io.k8s.api.autoscaling.v2beta1.PodsMetricStatus"
  , "io.k8s.api.rbac.v1alpha1.PolicyRule"
  , "io.k8s.api.rbac.v1beta1.PolicyRule"
  , "io.k8s.api.scheduling.v1alpha1.PriorityClass"
  , "io.k8s.api.scheduling.v1alpha1.PriorityClassList"
  , "io.k8s.api.apps.v1beta2.ReplicaSet"
  , "io.k8s.api.extensions.v1beta1.ReplicaSet"
  , "io.k8s.api.apps.v1beta2.ReplicaSetCondition"
  , "io.k8s.api.extensions.v1beta1.ReplicaSetCondition"
  , "io.k8s.api.apps.v1beta2.ReplicaSetList"
  , "io.k8s.api.extensions.v1beta1.ReplicaSetList"
  , "io.k8s.api.apps.v1beta2.ReplicaSetSpec"
  , "io.k8s.api.extensions.v1beta1.ReplicaSetSpec"
  , "io.k8s.api.apps.v1beta2.ReplicaSetStatus"
  , "io.k8s.api.extensions.v1beta1.ReplicaSetStatus"
  , "io.k8s.api.authorization.v1beta1.ResourceAttributes"
  , "io.k8s.api.autoscaling.v2beta1.ResourceMetricSource"
  , "io.k8s.api.autoscaling.v2beta1.ResourceMetricStatus"
  , "io.k8s.api.authorization.v1beta1.ResourceRule"
  , "io.k8s.api.rbac.v1alpha1.Role"
  , "io.k8s.api.rbac.v1beta1.Role"
  , "io.k8s.api.rbac.v1alpha1.RoleBinding"
  , "io.k8s.api.rbac.v1beta1.RoleBinding"
  , "io.k8s.api.rbac.v1alpha1.RoleBindingList"
  , "io.k8s.api.rbac.v1beta1.RoleBindingList"
  , "io.k8s.api.rbac.v1alpha1.RoleList"
  , "io.k8s.api.rbac.v1beta1.RoleList"
  , "io.k8s.api.rbac.v1alpha1.RoleRef"
  , "io.k8s.api.rbac.v1beta1.RoleRef"
  , "io.k8s.api.extensions.v1beta1.RollbackConfig"
  , "io.k8s.api.apps.v1beta2.RollingUpdateDaemonSet"
  , "io.k8s.api.extensions.v1beta1.RollingUpdateDaemonSet"
  , "io.k8s.api.apps.v1beta1.RollingUpdateDeployment"
  , "io.k8s.api.apps.v1beta2.RollingUpdateDeployment"
  , "io.k8s.api.extensions.v1beta1.RollingUpdateDeployment"
  , "io.k8s.api.apps.v1beta1.RollingUpdateStatefulSetStrategy"
  , "io.k8s.api.apps.v1beta2.RollingUpdateStatefulSetStrategy"
  , "io.k8s.api.extensions.v1beta1.RunAsGroupStrategyOptions"
  , "io.k8s.api.extensions.v1beta1.RunAsUserStrategyOptions"
  , "io.k8s.api.extensions.v1beta1.SELinuxStrategyOptions"
  , "io.k8s.api.extensions.v1beta1.Scale"
  , "io.k8s.api.apps.v1beta1.Scale"
  , "io.k8s.api.apps.v1beta2.Scale"
  , "io.k8s.api.apps.v1beta1.ScaleSpec"
  , "io.k8s.api.apps.v1beta2.ScaleSpec"
  , "io.k8s.api.extensions.v1beta1.ScaleSpec"
  , "io.k8s.api.apps.v1beta1.ScaleStatus"
  , "io.k8s.api.apps.v1beta2.ScaleStatus"
  , "io.k8s.api.extensions.v1beta1.ScaleStatus"
  , "io.k8s.api.authorization.v1beta1.SelfSubjectAccessReview"
  , "io.k8s.api.authorization.v1beta1.SelfSubjectAccessReviewSpec"
  , "io.k8s.api.authorization.v1beta1.SelfSubjectRulesReview"
  , "io.k8s.api.authorization.v1beta1.SelfSubjectRulesReviewSpec"
  , "io.k8s.api.admissionregistration.v1beta1.ServiceReference"
  , "io.k8s.api.auditregistration.v1alpha1.ServiceReference"
  , "io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1beta1.ServiceReference"
  , "io.k8s.kube-aggregator.pkg.apis.apiregistration.v1beta1.ServiceReference"
  , "io.k8s.api.apps.v1beta1.StatefulSet"
  , "io.k8s.api.apps.v1beta2.StatefulSet"
  , "io.k8s.api.apps.v1beta1.StatefulSetCondition"
  , "io.k8s.api.apps.v1beta2.StatefulSetCondition"
  , "io.k8s.api.apps.v1beta1.StatefulSetList"
  , "io.k8s.api.apps.v1beta2.StatefulSetList"
  , "io.k8s.api.apps.v1beta1.StatefulSetSpec"
  , "io.k8s.api.apps.v1beta2.StatefulSetSpec"
  , "io.k8s.api.apps.v1beta1.StatefulSetStatus"
  , "io.k8s.api.apps.v1beta2.StatefulSetStatus"
  , "io.k8s.api.apps.v1beta1.StatefulSetUpdateStrategy"
  , "io.k8s.api.apps.v1beta2.StatefulSetUpdateStrategy"
  , "io.k8s.api.storage.v1beta1.StorageClass"
  , "io.k8s.api.storage.v1beta1.StorageClassList"
  , "io.k8s.api.rbac.v1alpha1.Subject"
  , "io.k8s.api.rbac.v1beta1.Subject"
  , "io.k8s.api.authorization.v1beta1.SubjectAccessReview"
  , "io.k8s.api.authorization.v1beta1.SubjectAccessReviewSpec"
  , "io.k8s.api.authorization.v1beta1.SubjectAccessReviewStatus"
  , "io.k8s.api.authorization.v1beta1.SubjectRulesReviewStatus"
  , "io.k8s.api.extensions.v1beta1.SupplementalGroupsStrategyOptions"
  , "io.k8s.api.authentication.v1beta1.TokenReview"
  , "io.k8s.api.authentication.v1beta1.TokenReviewSpec"
  , "io.k8s.api.authentication.v1beta1.TokenReviewStatus"
  , "io.k8s.api.authentication.v1beta1.UserInfo"
  , "io.k8s.api.storage.v1alpha1.VolumeAttachment"
  , "io.k8s.api.storage.v1beta1.VolumeAttachment"
  , "io.k8s.api.storage.v1alpha1.VolumeAttachmentList"
  , "io.k8s.api.storage.v1beta1.VolumeAttachmentList"
  , "io.k8s.api.storage.v1alpha1.VolumeAttachmentSource"
  , "io.k8s.api.storage.v1beta1.VolumeAttachmentSource"
  , "io.k8s.api.storage.v1alpha1.VolumeAttachmentSpec"
  , "io.k8s.api.storage.v1beta1.VolumeAttachmentSpec"
  , "io.k8s.api.storage.v1alpha1.VolumeAttachmentStatus"
  , "io.k8s.api.storage.v1beta1.VolumeAttachmentStatus"
  , "io.k8s.api.storage.v1alpha1.VolumeError"
  , "io.k8s.api.storage.v1beta1.VolumeError"
  , "io.k8s.api.auditregistration.v1alpha1.Webhook"
  , "io.k8s.api.auditregistration.v1alpha1.WebhookClientConfig"
  , "io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1beta1.WebhookClientConfig"
  ]
