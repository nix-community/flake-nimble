{
  description = ''Nim wrapper for the libpng library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-png-master.flake = false;
  inputs.src-png-master.type = "github";
  inputs.src-png-master.owner = "barcharcraz";
  inputs.src-png-master.repo = "nimlibpng";
  inputs.src-png-master.ref = "refs/heads/master";
  inputs.src-png-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-png-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-png-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-png-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}