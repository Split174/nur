{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "unregistry";
  version = "0.3.1";

  src = fetchFromGitHub {
    owner = "psviderski";
    repo = "unregistry";
    rev = "v${version}";
    hash = "sha256-9FPCIbGtx3qNfVXwWnX6r/bSOge//ojJenwirT3i7iI=";
  };

  vendorHash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";

  ldflags = [ "-s" "-w" ];

  meta = {
    description = "Push docker images directly to remote servers without an external registry";
    homepage = "https://github.com/psviderski/unregistry";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; ["Split174"];
    mainProgram = "unregistry";
  };
}
