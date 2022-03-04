{
  description = ''Financial Library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimFinLib-master.flake = false;
  inputs.src-nimFinLib-master.type = "github";
  inputs.src-nimFinLib-master.owner = "qqtop";
  inputs.src-nimFinLib-master.repo = "NimFinLib";
  inputs.src-nimFinLib-master.ref = "refs/heads/master";
  inputs.src-nimFinLib-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."https://github.com/qqtop/nimcx".type = "github";
  inputs."https://github.com/qqtop/nimcx".owner = "riinr";
  inputs."https://github.com/qqtop/nimcx".repo = "flake-nimble";
  inputs."https://github.com/qqtop/nimcx".ref = "flake-pinning";
  inputs."https://github.com/qqtop/nimcx".dir = "nimpkgs/h/https://github.com/qqtop/nimcx";
  inputs."https://github.com/qqtop/nimcx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/qqtop/nimcx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimFinLib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimFinLib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimFinLib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}