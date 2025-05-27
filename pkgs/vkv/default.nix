{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "vkv";
  version = "0.8.6";

  src = fetchFromGitHub {
    owner = "FalcoSuessgott";
    repo = "vkv";
    rev = "v${version}";
    hash = "sha256-UyfheBEem8D6H73LfyhFt5m372scaxsalsO5eaU4QR4=";
  };

  vendorHash = "sha256-yYA2MZGOa4JSLHKZQBx817LT9u4jRmsaz9YFrpAilmg=";

  ldflags = [
    "-s"
    "-w"
    "-X=main.version=${version}"
  ];

  postPatch = ''
     substituteInPlace go.mod --replace "go 1.23.4" "go 1.23.3"
   '';

  meta = {
    description = "Vkv enables you to list, compare, move, import, document, backup & encrypt secrets from a HashiCorp Vault KV engine";
    homepage = "https://github.com/FalcoSuessgott/vkv";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ "Split174" ];
    mainProgram = "vkv";
  };
}
