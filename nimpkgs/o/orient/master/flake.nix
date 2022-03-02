{
  description = ''OrientDB driver written in pure Nim, uses the OrientDB 2.0 Binary Protocol with Binary Serialization.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-orient-master.flake = false;
  inputs.src-orient-master.type = "github";
  inputs.src-orient-master.owner = "philip-wernersbach";
  inputs.src-orient-master.repo = "nim-orient";
  inputs.src-orient-master.ref = "refs/heads/master";
  inputs.src-orient-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-orient-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-orient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-orient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}