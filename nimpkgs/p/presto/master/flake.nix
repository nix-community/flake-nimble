{
  description = ''REST API framework for Nim language'';
  inputs.src-presto-master.flake = false;
  inputs.src-presto-master.type = "github";
  inputs.src-presto-master.owner = "status-im";
  inputs.src-presto-master.repo = "nim-presto";
  inputs.src-presto-master.ref = "refs/heads/master";
  
  
  inputs."chronos".url = "path:../../../c/chronos";
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  
  inputs."chronicles".url = "path:../../../c/chronicles";
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, src-presto-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-presto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-presto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}