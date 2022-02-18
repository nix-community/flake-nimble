{
  description = ''Various collections and utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-collections-v0_3_3.flake = false;
  inputs.src-collections-v0_3_3.type = "github";
  inputs.src-collections-v0_3_3.owner = "zielmicha";
  inputs.src-collections-v0_3_3.repo = "collections.nim";
  inputs.src-collections-v0_3_3.ref = "refs/tags/v0.3.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-collections-v0_3_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-collections-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-collections-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}