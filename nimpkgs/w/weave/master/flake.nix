{
  description = ''a state-of-the-art multithreading runtime'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-weave-master.flake = false;
  inputs.src-weave-master.type = "github";
  inputs.src-weave-master.owner = "mratsim";
  inputs.src-weave-master.repo = "weave";
  inputs.src-weave-master.ref = "refs/heads/master";
  inputs.src-weave-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."synthesis".type = "github";
  # inputs."synthesis".owner = "riinr";
  # inputs."synthesis".repo = "flake-nimble";
  # inputs."synthesis".ref = "flake-pinning";
  # inputs."synthesis".dir = "nimpkgs/s/synthesis";
  # inputs."synthesis".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."synthesis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-weave-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-weave-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-weave-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}