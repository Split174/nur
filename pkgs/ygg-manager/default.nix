{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule rec {
  pname = "ygg-manager";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "Split174";
    repo = "ygg-manager";
    rev = "v${version}";
    hash = "sha256-8YxYgvKRznIgvBDbKmoEj0phhiCNQrU7l88fDq9vCso=";
  };

  vendorHash = null;

  ldflags = ["-s" "-w"];

  meta = {
    description = "";
    homepage = "https://github.com/Split174/ygg-manager";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; ["Split174"];
    mainProgram = "ygg-manager";
  };
}
