{
  description = ''Helpers for supporting and simplifying import of symbols from C into Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-importc_helpers-master.flake = false;
  inputs.src-importc_helpers-master.type = "github";
  inputs.src-importc_helpers-master.owner = "fredrikhr";
  inputs.src-importc_helpers-master.repo = "nim-importc-helpers";
  inputs.src-importc_helpers-master.ref = "refs/heads/master";
  inputs.src-importc_helpers-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-importc_helpers-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-importc_helpers-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-importc_helpers-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}