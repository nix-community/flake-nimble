{
  description = ''Mustache templating for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-moustachu-0_9_1.flake = false;
  inputs.src-moustachu-0_9_1.type = "github";
  inputs.src-moustachu-0_9_1.owner = "fenekku";
  inputs.src-moustachu-0_9_1.repo = "moustachu";
  inputs.src-moustachu-0_9_1.ref = "refs/tags/0.9.1";
  
  
  inputs."commandeer".type = "github";
  inputs."commandeer".owner = "riinr";
  inputs."commandeer".repo = "flake-nimble";
  inputs."commandeer".ref = "flake-pinning";
  inputs."commandeer".dir = "nimpkgs/c/commandeer";

  outputs = { self, nixpkgs, flakeNimbleLib, src-moustachu-0_9_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moustachu-0_9_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-moustachu-0_9_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}