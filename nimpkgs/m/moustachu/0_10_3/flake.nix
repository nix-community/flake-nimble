{
  description = ''Mustache templating for Nim.'';
  inputs.src-moustachu-0_10_3.flake = false;
  inputs.src-moustachu-0_10_3.type = "github";
  inputs.src-moustachu-0_10_3.owner = "fenekku";
  inputs.src-moustachu-0_10_3.repo = "moustachu";
  inputs.src-moustachu-0_10_3.ref = "refs/tags/0.10.3";
  
  
  inputs."commandeer".type = "github";
  inputs."commandeer".owner = "riinr";
  inputs."commandeer".repo = "flake-nimble";
  inputs."commandeer".ref = "flake-pinning";
  inputs."commandeer".dir = "nimpkgs/c/commandeer";

  outputs = { self, nixpkgs, src-moustachu-0_10_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moustachu-0_10_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moustachu-0_10_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}