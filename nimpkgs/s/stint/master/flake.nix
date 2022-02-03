{
  description = ''Stack-based arbitrary-precision integers - Fast and portable with natural syntax for resource-restricted devices'';
  inputs.src-stint-master.flake = false;
  inputs.src-stint-master.type = "github";
  inputs.src-stint-master.owner = "status-im";
  inputs.src-stint-master.repo = "nim-stint";
  inputs.src-stint-master.ref = "refs/heads/master";
  
  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, src-stint-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stint-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stint-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}