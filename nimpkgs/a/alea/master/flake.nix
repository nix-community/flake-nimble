{
  description = ''Define and compose random variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-alea-master.flake = false;
  inputs.src-alea-master.type = "github";
  inputs.src-alea-master.owner = "andreaferretti";
  inputs.src-alea-master.repo = "alea";
  inputs.src-alea-master.ref = "refs/heads/master";
  inputs.src-alea-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."random".type = "github";
  # inputs."random".owner = "riinr";
  # inputs."random".repo = "flake-nimble";
  # inputs."random".ref = "flake-pinning";
  # inputs."random".dir = "nimpkgs/r/random";
  # inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-alea-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alea-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alea-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}