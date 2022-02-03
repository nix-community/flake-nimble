{
  description = ''Universally Unique Lexicographically Sortable Identifier'';
  inputs.src-ulid-master.flake = false;
  inputs.src-ulid-master.type = "github";
  inputs.src-ulid-master.owner = "adelq";
  inputs.src-ulid-master.repo = "ulid";
  inputs.src-ulid-master.ref = "refs/heads/master";
  
  
  inputs."random".url = "path:../../../r/random";
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";

  outputs = { self, nixpkgs, src-ulid-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ulid-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ulid-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}