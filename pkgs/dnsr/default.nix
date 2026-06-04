{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "dnsr";
  version = "5.0.2";

  src = fetchFromGitHub {
    owner = "Jipok";
    repo = "dnsr";
    rev = version;
    hash = "sha256-f7X/pDoS/y1xw7q+U0lqJqOqprkmM/z7FMb7iIf+9wU=";
  };

  vendorHash = "sha256-N/8pADiBRZmERWuCGNRIaDHNRr2GZYqyiv7HtQGmW70=";

  ldflags = [ "-s" "-w" ];

  meta = {
    description = "DNS-based selective routing for DPI bypass on Linux & routers";
    homepage = "https://github.com/Jipok/dnsr";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      "Jipok"
      "Split174"
    ];
    mainProgram = "dnsr";
  };
}
