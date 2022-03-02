{
  description = ''Native Nim Zend API glue for easy PHP extension development.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimzend-master.flake = false;
  inputs.src-nimzend-master.type = "github";
  inputs.src-nimzend-master.owner = "metatexx";
  inputs.src-nimzend-master.repo = "nimzend";
  inputs.src-nimzend-master.ref = "refs/heads/master";
  inputs.src-nimzend-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimzend-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimzend-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimzend-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}