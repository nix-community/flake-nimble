{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';
  inputs.src-nimnews-master.flake = false;
  inputs.src-nimnews-master.type = "github";
  inputs.src-nimnews-master.owner = "mildred";
  inputs.src-nimnews-master.repo = "nimnews";
  inputs.src-nimnews-master.ref = "refs/heads/master";
  
  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."nuuid".url = "path:../../../n/nuuid";
  inputs."nuuid".type = "github";
  inputs."nuuid".owner = "riinr";
  inputs."nuuid".repo = "flake-nimble";
  inputs."nuuid".ref = "flake-pinning";
  inputs."nuuid".dir = "nimpkgs/n/nuuid";

  
  inputs."scram".url = "path:../../../s/scram";
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  
  inputs."passgen".url = "path:../../../p/passgen";
  inputs."passgen".type = "github";
  inputs."passgen".owner = "riinr";
  inputs."passgen".repo = "flake-nimble";
  inputs."passgen".ref = "flake-pinning";
  inputs."passgen".dir = "nimpkgs/p/passgen";

  
  inputs."npeg".url = "path:../../../n/npeg";
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."nimassets".url = "path:../../../n/nimassets";
  inputs."nimassets".type = "github";
  inputs."nimassets".owner = "riinr";
  inputs."nimassets".repo = "flake-nimble";
  inputs."nimassets".ref = "flake-pinning";
  inputs."nimassets".dir = "nimpkgs/n/nimassets";

  
  inputs."prologue".url = "path:../../../p/prologue";
  inputs."prologue".type = "github";
  inputs."prologue".owner = "riinr";
  inputs."prologue".repo = "flake-nimble";
  inputs."prologue".ref = "flake-pinning";
  inputs."prologue".dir = "nimpkgs/p/prologue";

  
  inputs."templates".url = "path:../../../t/templates";
  inputs."templates".type = "github";
  inputs."templates".owner = "riinr";
  inputs."templates".repo = "flake-nimble";
  inputs."templates".ref = "flake-pinning";
  inputs."templates".dir = "nimpkgs/t/templates";

  
  inputs."asynctools".url = "path:../../../a/asynctools";
  inputs."asynctools".type = "github";
  inputs."asynctools".owner = "riinr";
  inputs."asynctools".repo = "flake-nimble";
  inputs."asynctools".ref = "flake-pinning";
  inputs."asynctools".dir = "nimpkgs/a/asynctools";

  outputs = { self, nixpkgs, src-nimnews-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimnews-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimnews-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}