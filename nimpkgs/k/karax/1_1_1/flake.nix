{
  description = ''Karax is a framework for developing single page applications in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-karax-1_1_1.flake = false;
  inputs.src-karax-1_1_1.type = "github";
  inputs.src-karax-1_1_1.owner = "karaxnim";
  inputs.src-karax-1_1_1.repo = "karax";
  inputs.src-karax-1_1_1.ref = "refs/tags/1.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-karax-1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-karax-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-karax-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}