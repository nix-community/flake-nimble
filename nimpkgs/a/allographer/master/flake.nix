{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';
  inputs.src-allographer-master.flake = false;
  inputs.src-allographer-master.type = "github";
  inputs.src-allographer-master.owner = "itsumura-h";
  inputs.src-allographer-master.repo = "nim-allographer";
  inputs.src-allographer-master.ref = "refs/heads/master";
  
  
  inputs."dotenv".type = "github";
  inputs."dotenv".owner = "riinr";
  inputs."dotenv".repo = "flake-nimble";
  inputs."dotenv".ref = "flake-pinning";
  inputs."dotenv".dir = "nimpkgs/d/dotenv";

  outputs = { self, nixpkgs, src-allographer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allographer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-allographer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}