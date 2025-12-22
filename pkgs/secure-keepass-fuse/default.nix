{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule rec {
  pname = "secure-keepass-fuse";
  version = "0.0.1";

  src = fetchFromGitHub {
    owner = "Split174";
    repo = "secure-keepass-fuse";
    rev = "v${version}";
    hash = "sha256-jtBDamEp7lL1BXhHCCgQb873g+vuDAKZtn5PdfZ4WpY=";
  };

  vendorHash = "sha256-83uE2xirQ1R/hiRoIxLo4YVCJ6mybfDePK9PCinyJPM=";

  ldflags = ["-s" "-w"];

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
