{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimnews-latest-master.flake = false;
  inputs.src-nimnews-latest-master.type = "github";
  inputs.src-nimnews-latest-master.owner = "mildred";
  inputs.src-nimnews-latest-master.repo = "nimnews";
  inputs.src-nimnews-latest-master.ref = "refs/tags/latest-master";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."nuuid".type = "github";
  inputs."nuuid".owner = "riinr";
  inputs."nuuid".repo = "flake-nimble";
  inputs."nuuid".ref = "flake-pinning";
  inputs."nuuid".dir = "nimpkgs/n/nuuid";

  
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  
  inputs."passgen".type = "github";
  inputs."passgen".owner = "riinr";
  inputs."passgen".repo = "flake-nimble";
  inputs."passgen".ref = "flake-pinning";
  inputs."passgen".dir = "nimpkgs/p/passgen";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."nimassets".type = "github";
  inputs."nimassets".owner = "riinr";
  inputs."nimassets".repo = "flake-nimble";
  inputs."nimassets".ref = "flake-pinning";
  inputs."nimassets".dir = "nimpkgs/n/nimassets";

  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."templates".type = "github";
  inputs."templates".owner = "riinr";
  inputs."templates".repo = "flake-nimble";
  inputs."templates".ref = "flake-pinning";
  inputs."templates".dir = "nimpkgs/t/templates";

  
  inputs."asynctools".type = "github";
  inputs."asynctools".owner = "riinr";
  inputs."asynctools".repo = "flake-nimble";
  inputs."asynctools".ref = "flake-pinning";
  inputs."asynctools".dir = "nimpkgs/a/asynctools";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimnews-latest-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimnews-latest-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimnews-latest-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}