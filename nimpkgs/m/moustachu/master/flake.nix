{
  description = ''Mustache templating for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-moustachu-master.flake = false;
  inputs.src-moustachu-master.type = "github";
  inputs.src-moustachu-master.owner = "fenekku";
  inputs.src-moustachu-master.repo = "moustachu";
  inputs.src-moustachu-master.ref = "refs/heads/master";
  
  
  inputs."commandeer".type = "github";
  inputs."commandeer".owner = "riinr";
  inputs."commandeer".repo = "flake-nimble";
  inputs."commandeer".ref = "flake-pinning";
  inputs."commandeer".dir = "nimpkgs/c/commandeer";

  outputs = { self, nixpkgs, flakeNimbleLib, src-moustachu-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moustachu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-moustachu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}