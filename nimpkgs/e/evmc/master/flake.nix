{
  description = ''A wrapper for the The Ethereum EVMC library'';
  inputs.src-evmc-master.flake = false;
  inputs.src-evmc-master.type = "github";
  inputs.src-evmc-master.owner = "status-im";
  inputs.src-evmc-master.repo = "nim-evmc";
  inputs.src-evmc-master.ref = "refs/heads/master";
  
  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, src-evmc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-evmc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-evmc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}