{
  description = ''Mustache templating for Nim.'';
  inputs.src-moustachu-0_2_0.flake = false;
  inputs.src-moustachu-0_2_0.type = "github";
  inputs.src-moustachu-0_2_0.owner = "fenekku";
  inputs.src-moustachu-0_2_0.repo = "moustachu";
  inputs.src-moustachu-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-moustachu-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moustachu-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moustachu-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}