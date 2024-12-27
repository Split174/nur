{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "dnsr";
  version = "4.1.1";

  src = fetchFromGitHub {
    owner = "Jipok";
    repo = "dnsr";
    rev = version;
    hash = "sha256-/2FJ28RZrox7Txc4NhJa8+vnPXSN76js/JoD8rLu8sQ=";
  };

  vendorHash = "sha256-ZfLADPtkGWE7XOk0dOy5yNMXMI9II9TnQ+lMTZx7B/M=";

  ldflags = [ "-s" "-w" ];

  meta = {
    description = "DNS-based selective routing for DPI bypass on Linux & routers";
    homepage = "git@github.com:Jipok/dnsr.git";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      Jipok
      Split174
    ];
    mainProgram = "dnsr";
  };
}
