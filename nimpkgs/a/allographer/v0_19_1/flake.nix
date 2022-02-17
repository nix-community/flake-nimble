{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';
  inputs.src-allographer-v0_19_1.flake = false;
  inputs.src-allographer-v0_19_1.type = "github";
  inputs.src-allographer-v0_19_1.owner = "itsumura-h";
  inputs.src-allographer-v0_19_1.repo = "nim-allographer";
  inputs.src-allographer-v0_19_1.ref = "refs/tags/v0.19.1";
  
  
  inputs."dotenv".type = "github";
  inputs."dotenv".owner = "riinr";
  inputs."dotenv".repo = "flake-nimble";
  inputs."dotenv".ref = "flake-pinning";
  inputs."dotenv".dir = "nimpkgs/d/dotenv";

  outputs = { self, nixpkgs, src-allographer-v0_19_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allographer-v0_19_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-allographer-v0_19_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}