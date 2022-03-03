{
  description = ''Mustache templating for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-moustachu-0_6_0.flake = false;
  inputs.src-moustachu-0_6_0.type = "github";
  inputs.src-moustachu-0_6_0.owner = "fenekku";
  inputs.src-moustachu-0_6_0.repo = "moustachu";
  inputs.src-moustachu-0_6_0.ref = "refs/tags/0.6.0";
  inputs.src-moustachu-0_6_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."commandeer".type = "github";
  # inputs."commandeer".owner = "riinr";
  # inputs."commandeer".repo = "flake-nimble";
  # inputs."commandeer".ref = "flake-pinning";
  # inputs."commandeer".dir = "nimpkgs/c/commandeer";
  # inputs."commandeer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."commandeer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-moustachu-0_6_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moustachu-0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-moustachu-0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}