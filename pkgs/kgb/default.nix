{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule rec {
  pname = "kgb";
  version = "unstable-2024-12-15";

  src = fetchFromGitHub {
    owner = "Split174";
    repo = "KGB";
    rev = "d9701cc696cb9c6e645beea951838d312a15ec7a";
    hash = "sha256-HfQm0YeqsFthqNMs+6u+23uqD3cM/4TgBZSC651D5lM=";
  };

  vendorHash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";

  ldflags = ["-s" "-w"];

  meta = {
    description = "";
    homepage = "https://github.com/Split174/KGB/tree/feature/mode-to-nft";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; ["Split174"];
    mainProgram = "kgb";
  };
}
