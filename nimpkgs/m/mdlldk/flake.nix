{
  description = ''Dynamic-link libraries (DLLs) Development Kit for mIRC.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mdlldk-main".type = "github";
  inputs."mdlldk-main".owner = "riinr";
  inputs."mdlldk-main".repo = "flake-nimble";
  inputs."mdlldk-main".ref = "flake-pinning";
  inputs."mdlldk-main".dir = "nimpkgs/m/mdlldk/main";
  inputs."mdlldk-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdlldk-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}