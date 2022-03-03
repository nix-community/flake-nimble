{
  description = ''Implementation of dual numbers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dual-master.flake = false;
  inputs.src-dual-master.type = "github";
  inputs.src-dual-master.owner = "drjdn";
  inputs.src-dual-master.repo = "nim_dual";
  inputs.src-dual-master.ref = "refs/heads/master";
  inputs.src-dual-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dual-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dual-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dual-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}