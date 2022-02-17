{
  description = ''Simplified handling of command line options and config files'';
  inputs.src-confutils-master.flake = false;
  inputs.src-confutils-master.type = "github";
  inputs.src-confutils-master.owner = "status-im";
  inputs.src-confutils-master.repo = "nim-confutils";
  inputs.src-confutils-master.ref = "refs/heads/master";
  
  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, src-confutils-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-confutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-confutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}