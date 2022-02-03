{
  description = ''Lightweight i3 status bar.'';
  inputs.src-nimi3status-0_2_0.flake = false;
  inputs.src-nimi3status-0_2_0.type = "github";
  inputs.src-nimi3status-0_2_0.owner = "FedericoCeratto";
  inputs.src-nimi3status-0_2_0.repo = "nimi3status";
  inputs.src-nimi3status-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."colorsys".url = "path:../../../c/colorsys";
  inputs."colorsys".type = "github";
  inputs."colorsys".owner = "riinr";
  inputs."colorsys".repo = "flake-nimble";
  inputs."colorsys".ref = "flake-pinning";
  inputs."colorsys".dir = "nimpkgs/c/colorsys";

  outputs = { self, nixpkgs, src-nimi3status-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimi3status-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimi3status-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}