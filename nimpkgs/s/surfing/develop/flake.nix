{
  description = ''Surfing is a highly functional CLI for Base64.'';
  inputs.src-surfing-develop.flake = false;
  inputs.src-surfing-develop.type = "github";
  inputs.src-surfing-develop.owner = "momeemt";
  inputs.src-surfing-develop.repo = "surfing";
  inputs.src-surfing-develop.ref = "refs/heads/develop";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-surfing-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-surfing-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-surfing-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}