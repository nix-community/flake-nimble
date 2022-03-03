{
  description = ''Sampling profiler that finds hot paths in your code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hottie-master.flake = false;
  inputs.src-hottie-master.type = "github";
  inputs.src-hottie-master.owner = "treeform";
  inputs.src-hottie-master.repo = "hottie";
  inputs.src-hottie-master.ref = "refs/heads/master";
  inputs.src-hottie-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."ptrace".type = "github";
  # inputs."ptrace".owner = "riinr";
  # inputs."ptrace".repo = "flake-nimble";
  # inputs."ptrace".ref = "flake-pinning";
  # inputs."ptrace".dir = "nimpkgs/p/ptrace";
  # inputs."ptrace".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ptrace".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hottie-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hottie-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hottie-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}