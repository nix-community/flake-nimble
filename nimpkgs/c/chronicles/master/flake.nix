{
  description = ''A crafty implementation of structured logging for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-chronicles-master.flake = false;
  inputs.src-chronicles-master.type = "github";
  inputs.src-chronicles-master.owner = "status-im";
  inputs.src-chronicles-master.repo = "nim-chronicles";
  inputs.src-chronicles-master.ref = "refs/heads/master";
  inputs.src-chronicles-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."testutils".type = "github";
  # inputs."testutils".owner = "riinr";
  # inputs."testutils".repo = "flake-nimble";
  # inputs."testutils".ref = "flake-pinning";
  # inputs."testutils".dir = "nimpkgs/t/testutils";
  # inputs."testutils".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."testutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."json_serialization".type = "github";
  # inputs."json_serialization".owner = "riinr";
  # inputs."json_serialization".repo = "flake-nimble";
  # inputs."json_serialization".ref = "flake-pinning";
  # inputs."json_serialization".dir = "nimpkgs/j/json_serialization";
  # inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-chronicles-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronicles-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chronicles-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}