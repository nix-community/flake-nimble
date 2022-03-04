{
  description = ''Lightweight i3 status bar.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimi3status-master.flake = false;
  inputs.src-nimi3status-master.type = "github";
  inputs.src-nimi3status-master.owner = "FedericoCeratto";
  inputs.src-nimi3status-master.repo = "nimi3status";
  inputs.src-nimi3status-master.ref = "refs/heads/master";
  inputs.src-nimi3status-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."colorsys".type = "github";
  inputs."colorsys".owner = "riinr";
  inputs."colorsys".repo = "flake-nimble";
  inputs."colorsys".ref = "flake-pinning";
  inputs."colorsys".dir = "nimpkgs/c/colorsys";
  inputs."colorsys".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorsys".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimi3status-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimi3status-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimi3status-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}