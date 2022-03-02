{
  description = ''Various collections and utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-collections-v0_5_1.flake = false;
  inputs.src-collections-v0_5_1.type = "github";
  inputs.src-collections-v0_5_1.owner = "zielmicha";
  inputs.src-collections-v0_5_1.repo = "collections.nim";
  inputs.src-collections-v0_5_1.ref = "refs/tags/v0.5.1";
  inputs.src-collections-v0_5_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-collections-v0_5_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-collections-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-collections-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}