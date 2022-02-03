{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';
  inputs.src-allographer-v0_12_2.flake = false;
  inputs.src-allographer-v0_12_2.type = "github";
  inputs.src-allographer-v0_12_2.owner = "itsumura-h";
  inputs.src-allographer-v0_12_2.repo = "nim-allographer";
  inputs.src-allographer-v0_12_2.ref = "refs/tags/v0.12.2";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."progress".url = "path:../../../p/progress";
  inputs."progress".type = "github";
  inputs."progress".owner = "riinr";
  inputs."progress".repo = "flake-nimble";
  inputs."progress".ref = "flake-pinning";
  inputs."progress".dir = "nimpkgs/p/progress";

  outputs = { self, nixpkgs, src-allographer-v0_12_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allographer-v0_12_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-allographer-v0_12_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}