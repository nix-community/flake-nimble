{
  description = ''A terminal file manager written in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimmm-v0_1_2.flake = false;
  inputs.src-nimmm-v0_1_2.type = "github";
  inputs.src-nimmm-v0_1_2.owner = "joachimschmidt557";
  inputs.src-nimmm-v0_1_2.repo = "nimmm";
  inputs.src-nimmm-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-nimmm-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."noise".type = "github";
  # inputs."noise".owner = "riinr";
  # inputs."noise".repo = "flake-nimble";
  # inputs."noise".ref = "flake-pinning";
  # inputs."noise".dir = "nimpkgs/n/noise";
  # inputs."noise".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."noise".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimbox".type = "github";
  # inputs."nimbox".owner = "riinr";
  # inputs."nimbox".repo = "flake-nimble";
  # inputs."nimbox".ref = "flake-pinning";
  # inputs."nimbox".dir = "nimpkgs/n/nimbox";
  # inputs."nimbox".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimbox".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."lscolors".type = "github";
  # inputs."lscolors".owner = "riinr";
  # inputs."lscolors".repo = "flake-nimble";
  # inputs."lscolors".ref = "flake-pinning";
  # inputs."lscolors".dir = "nimpkgs/l/lscolors";
  # inputs."lscolors".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."lscolors".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimmm-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimmm-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimmm-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}