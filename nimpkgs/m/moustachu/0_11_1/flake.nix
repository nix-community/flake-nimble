{
  description = ''Mustache templating for Nim.'';
  inputs.src-moustachu-0_11_1.flake = false;
  inputs.src-moustachu-0_11_1.type = "github";
  inputs.src-moustachu-0_11_1.owner = "fenekku";
  inputs.src-moustachu-0_11_1.repo = "moustachu";
  inputs.src-moustachu-0_11_1.ref = "refs/tags/0.11.1";
  
  
  inputs."commandeer".url = "path:../../../c/commandeer";
  inputs."commandeer".type = "github";
  inputs."commandeer".owner = "riinr";
  inputs."commandeer".repo = "flake-nimble";
  inputs."commandeer".ref = "flake-pinning";
  inputs."commandeer".dir = "nimpkgs/c/commandeer";

  outputs = { self, nixpkgs, src-moustachu-0_11_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moustachu-0_11_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moustachu-0_11_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}