{
  description = ''Mustache templating for Nim.'';
  inputs.src-moustachu-0_10_2.flake = false;
  inputs.src-moustachu-0_10_2.type = "github";
  inputs.src-moustachu-0_10_2.owner = "fenekku";
  inputs.src-moustachu-0_10_2.repo = "moustachu";
  inputs.src-moustachu-0_10_2.ref = "refs/tags/0.10.2";
  
  
  inputs."commandeer".type = "github";
  inputs."commandeer".owner = "riinr";
  inputs."commandeer".repo = "flake-nimble";
  inputs."commandeer".ref = "flake-pinning";
  inputs."commandeer".dir = "nimpkgs/c/commandeer";

  outputs = { self, nixpkgs, src-moustachu-0_10_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moustachu-0_10_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moustachu-0_10_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}