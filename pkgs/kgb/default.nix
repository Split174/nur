{
  lib,
  buildGoModule,
  fetchFromGitHub,
  nftables,
  wget,
}:
buildGoModule rec {
  pname = "kgb";
  version = "unstable-2024-12-27";

  src = fetchFromGitHub {
    owner = "Split174";
    repo = "KGB";
    rev = "99d14a78befe232e75cf7282b5376aa129e69a18";
    hash = "sha256-ZGKue8w2cfr4dy2r4/vxZxOQGwzEJLLsmnuuo8EKIRM=";
  };

  buildInputs = [wget nftables];

  vendorHash = "sha256-/K54cTtAjQOMfP+zZjogwTIGGOgyEgJp8I04TYMDM7M=";

  ldflags = ["-s" "-w"];

  meta = {
    description = "";
    homepage = "https://github.com/Split174/KGB/commit/99d14a78befe232e75cf7282b5376aa129e69a18";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [];
    mainProgram = "kgb";
  };
}
