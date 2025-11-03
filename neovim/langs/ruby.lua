local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config('ruby-lsp', {
  init_options = {
    formatter = "standard",
    linters = { "standard" },
    indexing = {
      excludedGems = {
        "aws-eventstream", "aws-partitions", "aws-sdk-cloudwatch", "aws-sdk-cloudwatchlogs", "aws-sdk-core",
        "aws-sdk-ec2", "aws-sdk-elasticloadbalancingv2", "aws-sdk-kms", "aws-sdk-route53", "aws-sdk-s3",
        "aws-sigv4", "bundler", "digest-crc", "google-apis-compute_v1", "google-apis-core", "google-apis-dns_v1",
        "google-apis-iam_v1", "google-apis-iamcredentials_v1", "google-apis-storage_v1", "google-cloud-core",
        "google-cloud-env", "google-cloud-errors", "google-cloud-storage", "language_server-protocol", "opentelemetry-api",
        "opentelemetry-common", "opentelemetry-helpers-sql-obfuscation", "opentelemetry-instrumentation-aws_sdk",
        "opentelemetry-instrumentation-base", "opentelemetry-instrumentation-excon", "opentelemetry-instrumentation-faraday",
        "opentelemetry-instrumentation-pg", "opentelemetry-instrumentation-rack", "opentelemetry-registry", "opentelemetry-sdk",
        "opentelemetry-semantic_conventions", "parser", "prism", "rbs", "rdoc", "rubocop", "sorbet-static", "yard",
      },
    },
  },
})

vim.lsp.config('sorbet', {
  capabilities = capabilities,
  cmd = { "srb", "tc", "--lsp", "--enable-all-beta-lsp-features" },
})

vim.lsp.enable('ruby-lsp')
vim.lsp.enable('sorbet')
