{
  description = ''Signal and Slot library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sling-master.flake = false;
  inputs.src-sling-master.type = "github";
  inputs.src-sling-master.owner = "Druage";
  inputs.src-sling-master.repo = "sling";
  inputs.src-sling-master.ref = "refs/heads/master";
  inputs.src-sling-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimrod".type = "github";
  # inputs."nimrod".owner = "riinr";
  # inputs."nimrod".repo = "flake-nimble";
  # inputs."nimrod".ref = "flake-pinning";
  # inputs."nimrod".dir = "nimpkgs/n/nimrod";
  # inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sling-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sling-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sling-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}