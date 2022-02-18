{
  description = ''Various collections and utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-collections-v0_5_2.flake = false;
  inputs.src-collections-v0_5_2.type = "github";
  inputs.src-collections-v0_5_2.owner = "zielmicha";
  inputs.src-collections-v0_5_2.repo = "collections.nim";
  inputs.src-collections-v0_5_2.ref = "refs/tags/v0.5.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-collections-v0_5_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-collections-v0_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-collections-v0_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}