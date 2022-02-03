{
  description = ''fast markdown parser'';
  inputs.src-nmark-develop.flake = false;
  inputs.src-nmark-develop.type = "github";
  inputs.src-nmark-develop.owner = "kyoheiu";
  inputs.src-nmark-develop.repo = "nmark";
  inputs.src-nmark-develop.ref = "refs/heads/develop";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-nmark-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmark-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nmark-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}