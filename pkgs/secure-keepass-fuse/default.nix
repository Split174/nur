{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule rec {
  pname = "secure-keepass-fuse";
  version = "feature/move-to-interactive-window";

  src = fetchFromGitHub {
    owner = "Split174";
    repo = "secure-keepass-fuse";
    rev = "${version}";
    hash = "sha256-qEioTkuSBa/R5qg3R/0STO17r+BZDJbkWjS1GYOYIYI=";
  };

  vendorHash = "sha256-+4Syd4z5SN4pe8lWTXeSN9NVTSFRY+XOns8F2leEGOo=";

  ldflags = ["-s" "-w"];

  doCheck = false;

  meta = {
    description = "";
    homepage = "https://github.com/Split174/secure-keepass-fuse";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      "Split174"
    ];
    mainProgram = "secure-keepass-fuse";
  };
}
