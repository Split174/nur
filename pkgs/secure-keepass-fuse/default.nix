{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule rec {
  pname = "secure-keepass-fuse";
  version = "0.0.3";

  src = fetchFromGitHub {
    owner = "Split174";
    repo = "secure-keepass-fuse";
    rev = "v${version}";
    hash = "sha256-NanxPHquGhmMaYPMAnHT4cYzBb3spr4XkkBGtlYDsHE=";
  };

  vendorHash = "sha256-LCV7QN3znl8gu3xFpJE3FG6rnzeTlVs/TvSY1jI0MUQ=";

  ldflags = ["-s" "-w"];

  meta = {
    description = "Secure-keepass-fuse - mounts kdbx attachments as fuse-filesystem. These attachments can only be read by specific processes specified in the notes for the entry";
    homepage = "https://github.com/Split174/secure-keepass-fuse";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [];
    mainProgram = "secure-keepass-fuse";
  };
}
