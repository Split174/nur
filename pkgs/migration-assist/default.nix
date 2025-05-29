{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule rec {
  pname = "migration-assist";
  version = "0.4";

  src = fetchFromGitHub {
    owner = "mattermost";
    repo = "migration-assist";
    rev = "v${version}";
    hash = "sha256-WkcIs8h07M390kELjmeGdQsNRZFR7Di0spIUFlMJD+0=";
  };

  vendorHash = "sha256-NBCPsB2bdm+O0WZZCGvTpT1pSTBobNRHAHHnT/cr1KQ=";

  ldflags = [
    "-s"
    "-w"
    "-X=github.com/mattermost/migration-assist/cmd/migration-assist/commands.Version=${version}"
  ];

  meta = {
    description = "A helper tool to automate MySQL -> Postgres migration for Mattermost";
    homepage = "https://github.com/mattermost/migration-assist";
    license = lib.licenses.unfree; # FIXME: nix-init did not find a license
    maintainers = with lib.maintainers; ["Split174"];
    mainProgram = "migration-assist";
  };
}
