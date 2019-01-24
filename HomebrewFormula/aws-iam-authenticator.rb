class AwsIamAuthenticator < Formula
  desc "Use AWS IAM credentials to auth to a Kubernetes cluster"
  homepage "https://github.com/kubernetes-sigs/aws-iam-authenticator"
  url "https://amazon-eks.s3-us-west-2.amazonaws.com/1.11.5/2018-12-06/bin/darwin/amd64/aws-iam-authenticator"
  version "1.11.5"
  sha256 "ef60d7ea5108b4de19f7fe59514643a7665df6832f94be620405138d8f60dd18"

  depends_on "kubernetes-cli"
  depends_on "awscli" => :recommended

  def install
    bin.install "aws-iam-authenticator"
  end

  test do
    system "#{bin}/aws-iam-authenticator", "version"
  end
end
