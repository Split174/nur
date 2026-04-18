{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule rec {
  pname = "ygg-manager";
  version = "unstable-2026-04-18";

  src = fetchFromGitHub {
    owner = "Split174";
    repo = "ygg-manager";
    rev = "c137941ed6bde6c59dfceca71092b26180b6fb5a";
    hash = "sha256-U04P7JyjayuUHGWzzXxg0y8vTrADInZnEq7XM68ASXo=";
  };

  vendorHash = null;

  ldflags = ["-s" "-w"];

  meta = {
    description = "";
    homepage = "https://github.com/Split174/ygg-manager";
    license = lib.licenses.MIT;
    maintainers = with lib.maintainers; [];
    mainProgram = "ygg-manager";
  };
}
