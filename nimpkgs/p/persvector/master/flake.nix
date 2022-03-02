{
  description = ''This is an implementation of Clojures persistent vectors in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-persvector-master.flake = false;
  inputs.src-persvector-master.type = "github";
  inputs.src-persvector-master.owner = "PMunch";
  inputs.src-persvector-master.repo = "nim-persistent-vector";
  inputs.src-persvector-master.ref = "refs/heads/master";
  inputs.src-persvector-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-persvector-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-persvector-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-persvector-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}