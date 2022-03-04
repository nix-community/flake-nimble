{
  description = ''Universally Unique Lexicographically Sortable Identifier'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ulid-master.flake = false;
  inputs.src-ulid-master.type = "github";
  inputs.src-ulid-master.owner = "adelq";
  inputs.src-ulid-master.repo = "ulid";
  inputs.src-ulid-master.ref = "refs/heads/master";
  inputs.src-ulid-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ulid-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ulid-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ulid-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}