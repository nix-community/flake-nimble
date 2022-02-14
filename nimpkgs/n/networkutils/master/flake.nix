{
  description = ''Various networking utils'';
  inputs.src-networkutils-master.flake = false;
  inputs.src-networkutils-master.type = "github";
  inputs.src-networkutils-master.owner = "Q-Master";
  inputs.src-networkutils-master.repo = "networkutils.nim";
  inputs.src-networkutils-master.ref = "refs/heads/master";
  
  
  inputs."ptr_math".url = "path:../../../p/ptr_math";
  inputs."ptr_math".type = "github";
  inputs."ptr_math".owner = "riinr";
  inputs."ptr_math".repo = "flake-nimble";
  inputs."ptr_math".ref = "flake-pinning";
  inputs."ptr_math".dir = "nimpkgs/p/ptr_math";

  outputs = { self, nixpkgs, src-networkutils-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-networkutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-networkutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}