{
  description = ''Concurrent hash table'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-stashtable-1_1_0.flake = false;
  inputs.src-stashtable-1_1_0.type = "github";
  inputs.src-stashtable-1_1_0.owner = "olliNiinivaara";
  inputs.src-stashtable-1_1_0.repo = "StashTable";
  inputs.src-stashtable-1_1_0.ref = "refs/tags/1.1.0";
  inputs.src-stashtable-1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-StashTable-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-StashTable-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-StashTable-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}