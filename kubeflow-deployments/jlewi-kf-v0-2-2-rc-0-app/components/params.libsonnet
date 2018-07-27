{
  global: {},
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "kubeflow-core": {
      AmbassadorImage: 'quay.io/datawire/ambassador:0.30.1',
      AmbassadorServiceType: 'ClusterIP',
      StatsdImage: 'quay.io/datawire/statsd:0.30.1',
      centralUiImage: 'gcr.io/kubeflow-images-public/centraldashboard:v0.2.1',
      cloud: 'null',
      disks: 'null',
      jupyterHubAuthenticator: 'iap',
      jupyterHubImage: 'gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1',
      jupyterHubServiceType: 'ClusterIP',
      jupyterNotebookPVCMount: '/home/jovyan',
      jupyterNotebookRegistry: 'gcr.io',
      jupyterNotebookRepoName: 'kubeflow-images-public',
      name: 'kubeflow-core',
      namespace: 'null',
      reportUsage: true,
      tfDefaultImage: 'null',
      tfJobImage: 'gcr.io/kubeflow-images-public/tf_operator:v20180724-13863edf',
      tfJobUiServiceType: 'ClusterIP',
      tfJobVersion: 'v1alpha2',
      usageId: '3adee82f-4aad-4cb3-9af7-31e1e060255b',
    },
    "cloud-endpoints": {
      name: 'cloud-endpoints',
      namespace: 'null',
      secretKey: 'admin-gcp-sa.json',
      secretName: 'admin-gcp-sa',
    },
    "cert-manager": {
      acmeEmail: 'jlewi@google.com',
      acmeUrl: 'https://acme-v01.api.letsencrypt.org/directory',
      name: 'cert-manager',
      namespace: 'null',
    },
    "iap-ingress": {
      disableJwtChecking: 'false',
      envoyImage: 'gcr.io/kubeflow-images-public/envoy:v20180309-0fb4886b463698702b6a08955045731903a18738',
      hostname: 'jlewi-kf-v0-2-2-rc-0.endpoints.cloud-ml-dev.cloud.goog',
      ipName: 'jlewi-kf-v0-2-2-rc-0-ip',
      issuer: 'letsencrypt-prod',
      name: 'iap-ingress',
      namespace: 'null',
      oauthSecretName: 'kubeflow-oauth',
      secretName: 'envoy-ingress-tls',
    },
  },
}