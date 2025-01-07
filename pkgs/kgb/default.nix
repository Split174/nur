{
  lib,
  buildGoModule,
  fetchFromGitHub,
  nftables,
  wget,
}:
buildGoModule rec {
  pname = "kgb";
  version = "0.0.1";

  src = fetchFromGitHub {
    owner = "Split174";
    repo = "KGB";
    rev = version;
    hash = "sha256-7FTFpYd15lJCI3b9hla7vdkZQUvwiXVdi5F4ulmu/OA=";
  };

  buildInputs = [wget nftables];

  vendorHash = "sha256-/K54cTtAjQOMfP+zZjogwTIGGOgyEgJp8I04TYMDM7M=";

  ldflags = ["-s" "-w"];

  meta = {
    description = "KGB is a Go application that manages IP filtering based on country codes using nftables";
    homepage = "https://github.com/Split174/KGB";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; ["Split174"];
    mainProgram = "kgb";
  };
}
