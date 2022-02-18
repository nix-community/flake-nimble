{
  description = ''libcmark wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cmark-0_1_0.flake = false;
  inputs.src-cmark-0_1_0.type = "github";
  inputs.src-cmark-0_1_0.owner = "zengxs";
  inputs.src-cmark-0_1_0.repo = "nim-cmark";
  inputs.src-cmark-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cmark-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmark-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cmark-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}