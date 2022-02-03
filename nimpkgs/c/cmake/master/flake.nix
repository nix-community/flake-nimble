{
  description = ''CMake for Nimble'';
  inputs.src-cmake-master.flake = false;
  inputs.src-cmake-master.type = "github";
  inputs.src-cmake-master.owner = "genotrance";
  inputs.src-cmake-master.repo = "cmake";
  inputs.src-cmake-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-cmake-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmake-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cmake-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}