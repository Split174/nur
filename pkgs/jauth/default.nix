{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "jauth";
  version = "1.8.0";

  src = fetchFromGitHub {
    owner = "Jipok";
    repo = "Jauth";
    rev = version;
    hash = "sha256-/3jtJwNj69DZ0tiuYZGGRQf9GxAGlW2972CmHp42c3Q=";
  };

  vendorHash = "sha256-1EmGuPnzG//Sp0QsP1hHhDLK01axih/+0GYJ527kRWE=";

  ldflags = [ "-s" "-w" ];

  meta = {
    description = "Lightweight SSL/TLS reverse proxy with authorization(via Telegram and SSH) for self-hosted apps";
    homepage = "https://github.com/Jipok/Jauth";
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "jauth";
  };
}
