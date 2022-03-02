{
  description = ''libcmark wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cmark-master.flake = false;
  inputs.src-cmark-master.type = "github";
  inputs.src-cmark-master.owner = "zengxs";
  inputs.src-cmark-master.repo = "nim-cmark";
  inputs.src-cmark-master.ref = "refs/heads/master";
  inputs.src-cmark-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cmark-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmark-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cmark-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}