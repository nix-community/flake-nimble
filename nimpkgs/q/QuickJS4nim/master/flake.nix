{
  description = ''A QuickJS wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-quickjs4nim-master.flake = false;
  inputs.src-quickjs4nim-master.type = "github";
  inputs.src-quickjs4nim-master.owner = "ImVexed";
  inputs.src-quickjs4nim-master.repo = "quickjs4nim";
  inputs.src-quickjs4nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-QuickJS4nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-QuickJS4nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-QuickJS4nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}