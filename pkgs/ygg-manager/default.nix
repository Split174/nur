{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule rec {
  pname = "ygg-manager";
  version = "1.0.1";

  src = fetchFromGitHub {
    owner = "Split174";
    repo = "ygg-manager";
    rev = "v${version}";
    hash = "sha256-szHq3pXathoxnUUlcNU1LvybUrxdzjJb7cWqFsanZVg=";
  };

  vendorHash = "sha256-Z8V1a3uJdG/lj6AP4Xly01MQSq/yBnB2/TuERrrj0o0=";

  ldflags = ["-s" "-w"];

  meta = {
    description = "Automated Yggdrasil peer manager written in Go. Keeps your node healthy by removing slow/unstable peers and discovering the best public nodes with country-based filtering and latency checks";
    homepage = "https://github.com/Split174/ygg-manager";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; ["Split174"];
    mainProgram = "ygg-manager";
  };
}
