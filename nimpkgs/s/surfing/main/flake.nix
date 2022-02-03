{
  description = ''Surfing is a highly functional CLI for Base64.'';
  inputs.src-surfing-main.flake = false;
  inputs.src-surfing-main.type = "github";
  inputs.src-surfing-main.owner = "momeemt";
  inputs.src-surfing-main.repo = "surfing";
  inputs.src-surfing-main.ref = "refs/heads/main";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-surfing-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-surfing-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-surfing-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}