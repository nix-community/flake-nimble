{
  description = ''Dynamically resizable data structure optimized for fast iteration.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-faststack-master.flake = false;
  inputs.src-faststack-master.type = "github";
  inputs.src-faststack-master.owner = "Vladar4";
  inputs.src-faststack-master.repo = "FastStack";
  inputs.src-faststack-master.ref = "refs/heads/master";
  inputs.src-faststack-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-faststack-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-faststack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-faststack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}