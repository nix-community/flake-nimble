{
  description = ''Lightweight i3 status bar.'';
  inputs.src-nimi3status-master.flake = false;
  inputs.src-nimi3status-master.type = "github";
  inputs.src-nimi3status-master.owner = "FedericoCeratto";
  inputs.src-nimi3status-master.repo = "nimi3status";
  inputs.src-nimi3status-master.ref = "refs/heads/master";
  
  
  inputs."colorsys".url = "path:../../../c/colorsys";
  inputs."colorsys".type = "github";
  inputs."colorsys".owner = "riinr";
  inputs."colorsys".repo = "flake-nimble";
  inputs."colorsys".ref = "flake-pinning";
  inputs."colorsys".dir = "nimpkgs/c/colorsys";

  outputs = { self, nixpkgs, src-nimi3status-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimi3status-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimi3status-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}