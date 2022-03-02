{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimnews-master.flake = false;
  inputs.src-nimnews-master.type = "github";
  inputs.src-nimnews-master.owner = "mildred";
  inputs.src-nimnews-master.repo = "nimnews";
  inputs.src-nimnews-master.ref = "refs/heads/master";
  inputs.src-nimnews-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."docopt".type = "github";
  # inputs."docopt".owner = "riinr";
  # inputs."docopt".repo = "flake-nimble";
  # inputs."docopt".ref = "flake-pinning";
  # inputs."docopt".dir = "nimpkgs/d/docopt";
  # inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nuuid".type = "github";
  # inputs."nuuid".owner = "riinr";
  # inputs."nuuid".repo = "flake-nimble";
  # inputs."nuuid".ref = "flake-pinning";
  # inputs."nuuid".dir = "nimpkgs/n/nuuid";
  # inputs."nuuid".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nuuid".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."scram".type = "github";
  # inputs."scram".owner = "riinr";
  # inputs."scram".repo = "flake-nimble";
  # inputs."scram".ref = "flake-pinning";
  # inputs."scram".dir = "nimpkgs/s/scram";
  # inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."passgen".type = "github";
  # inputs."passgen".owner = "riinr";
  # inputs."passgen".repo = "flake-nimble";
  # inputs."passgen".ref = "flake-pinning";
  # inputs."passgen".dir = "nimpkgs/p/passgen";
  # inputs."passgen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."passgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."npeg".type = "github";
  # inputs."npeg".owner = "riinr";
  # inputs."npeg".repo = "flake-nimble";
  # inputs."npeg".ref = "flake-pinning";
  # inputs."npeg".dir = "nimpkgs/n/npeg";
  # inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimassets".type = "github";
  # inputs."nimassets".owner = "riinr";
  # inputs."nimassets".repo = "flake-nimble";
  # inputs."nimassets".ref = "flake-pinning";
  # inputs."nimassets".dir = "nimpkgs/n/nimassets";
  # inputs."nimassets".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimassets".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."prologue".type = "github";
  # inputs."prologue".owner = "riinr";
  # inputs."prologue".repo = "flake-nimble";
  # inputs."prologue".ref = "flake-pinning";
  # inputs."prologue".dir = "nimpkgs/p/prologue";
  # inputs."prologue".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."prologue".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."templates".type = "github";
  # inputs."templates".owner = "riinr";
  # inputs."templates".repo = "flake-nimble";
  # inputs."templates".ref = "flake-pinning";
  # inputs."templates".dir = "nimpkgs/t/templates";
  # inputs."templates".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."templates".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."asynctools".type = "github";
  # inputs."asynctools".owner = "riinr";
  # inputs."asynctools".repo = "flake-nimble";
  # inputs."asynctools".ref = "flake-pinning";
  # inputs."asynctools".dir = "nimpkgs/a/asynctools";
  # inputs."asynctools".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimnews-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimnews-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimnews-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}