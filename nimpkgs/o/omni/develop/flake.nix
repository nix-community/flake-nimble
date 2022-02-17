{
  description = ''omni is a DSL for low-level audio programming.'';
  inputs.src-omni-develop.flake = false;
  inputs.src-omni-develop.type = "github";
  inputs.src-omni-develop.owner = "vitreo12";
  inputs.src-omni-develop.repo = "omni";
  inputs.src-omni-develop.ref = "refs/heads/develop";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-omni-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omni-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-omni-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}