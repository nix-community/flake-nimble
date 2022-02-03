{
  description = ''Migration manager for Norm.'';
  inputs.src-norman-develop.flake = false;
  inputs.src-norman-develop.type = "github";
  inputs.src-norman-develop.owner = "moigagoo";
  inputs.src-norman-develop.repo = "norman";
  inputs.src-norman-develop.ref = "refs/heads/develop";
  
  
  inputs."norm".url = "path:../../../n/norm";
  inputs."norm".type = "github";
  inputs."norm".owner = "riinr";
  inputs."norm".repo = "flake-nimble";
  inputs."norm".ref = "flake-pinning";
  inputs."norm".dir = "nimpkgs/n/norm";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."dotenv".url = "path:../../../d/dotenv";
  inputs."dotenv".type = "github";
  inputs."dotenv".owner = "riinr";
  inputs."dotenv".repo = "flake-nimble";
  inputs."dotenv".ref = "flake-pinning";
  inputs."dotenv".dir = "nimpkgs/d/dotenv";

  outputs = { self, nixpkgs, src-norman-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norman-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norman-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}