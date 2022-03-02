{
  description = ''CMake for Nimble'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cmake-master.flake = false;
  inputs.src-cmake-master.type = "github";
  inputs.src-cmake-master.owner = "genotrance";
  inputs.src-cmake-master.repo = "cmake";
  inputs.src-cmake-master.ref = "refs/heads/master";
  inputs.src-cmake-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimterop".type = "github";
  # inputs."nimterop".owner = "riinr";
  # inputs."nimterop".repo = "flake-nimble";
  # inputs."nimterop".ref = "flake-pinning";
  # inputs."nimterop".dir = "nimpkgs/n/nimterop";
  # inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cmake-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmake-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cmake-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}