{
  description = ''Simple reallocating vector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-vector-master.flake = false;
  inputs.src-vector-master.type = "github";
  inputs.src-vector-master.owner = "tontinton";
  inputs.src-vector-master.repo = "vector";
  inputs.src-vector-master.ref = "refs/heads/master";
  inputs.src-vector-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vector-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vector-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vector-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}