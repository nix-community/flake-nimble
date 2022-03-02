{
  description = ''Disk-based sequences'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-spills-master.flake = false;
  inputs.src-spills-master.type = "github";
  inputs.src-spills-master.owner = "andreaferretti";
  inputs.src-spills-master.repo = "spills";
  inputs.src-spills-master.ref = "refs/heads/master";
  inputs.src-spills-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-spills-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spills-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spills-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}