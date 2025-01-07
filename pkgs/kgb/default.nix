{
  lib,
  buildGoModule,
  fetchFromGitHub,
  nftables,
  wget,
}:
buildGoModule rec {
  pname = "kgb";
  version = "unstable-2025-01-07";

  src = fetchFromGitHub {
    owner = "Split174";
    repo = "KGB";
    rev = "dd44044cb9c40c018bd864ce3ebe39c1ecb23c90";
    hash = "sha256-0cB/kxMRiDGVucA+jxdCXVFfjqjCV0WCBnuRe7vb80I=";
  };

  buildInputs = [wget nftables];

  vendorHash = "sha256-/K54cTtAjQOMfP+zZjogwTIGGOgyEgJp8I04TYMDM7M=";

  ldflags = ["-s" "-w"];

  meta = {
    description = "";
    homepage = "https://github.com/Split174/KGB";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; ["Split174"];
    mainProgram = "kgb";
  };
}
