{
  description = ''Simple and lightweight OPDS ebook server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-tsundoku-v0_1_0.flake = false;
  inputs.src-tsundoku-v0_1_0.type = "github";
  inputs.src-tsundoku-v0_1_0.owner = "FedericoCeratto";
  inputs.src-tsundoku-v0_1_0.repo = "tsundoku";
  inputs.src-tsundoku-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-tsundoku-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-tsundoku-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tsundoku-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tsundoku-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}