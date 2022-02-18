{
  description = ''Utilities with dealing with 1d and 2d bit arrays.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bitty-master.flake = false;
  inputs.src-bitty-master.type = "github";
  inputs.src-bitty-master.owner = "treeform";
  inputs.src-bitty-master.repo = "bitty";
  inputs.src-bitty-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bitty-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}