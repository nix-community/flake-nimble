{
  description = ''Nim bindings for Open color'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-opencolor-v1_9_1_1.flake = false;
  inputs.src-opencolor-v1_9_1_1.type = "github";
  inputs.src-opencolor-v1_9_1_1.owner = "double-oxygeN";
  inputs.src-opencolor-v1_9_1_1.repo = "opencolor.nim";
  inputs.src-opencolor-v1_9_1_1.ref = "refs/tags/v1.9.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opencolor-v1_9_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opencolor-v1_9_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opencolor-v1_9_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}