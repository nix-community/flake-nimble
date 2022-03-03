{
  description = ''Various collections and utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-collections-v0_5_0.flake = false;
  inputs.src-collections-v0_5_0.type = "github";
  inputs.src-collections-v0_5_0.owner = "zielmicha";
  inputs.src-collections-v0_5_0.repo = "collections.nim";
  inputs.src-collections-v0_5_0.ref = "refs/tags/v0.5.0";
  inputs.src-collections-v0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-collections-v0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-collections-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-collections-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}