{
  description = ''Nim bindings for Open color'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-opencolor-v1_9_1.flake = false;
  inputs.src-opencolor-v1_9_1.type = "github";
  inputs.src-opencolor-v1_9_1.owner = "Double-oxygeN";
  inputs.src-opencolor-v1_9_1.repo = "opencolor.nim";
  inputs.src-opencolor-v1_9_1.ref = "refs/tags/v1.9.1";
  inputs.src-opencolor-v1_9_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opencolor-v1_9_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opencolor-v1_9_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opencolor-v1_9_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}