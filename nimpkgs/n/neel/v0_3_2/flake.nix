{
  description = ''A Nim library for making lightweight Electron-like HTML/JS GUI apps, with full access to Nim capabilities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-neel-v0_3_2.flake = false;
  inputs.src-neel-v0_3_2.type = "github";
  inputs.src-neel-v0_3_2.owner = "Niminem";
  inputs.src-neel-v0_3_2.repo = "Neel";
  inputs.src-neel-v0_3_2.ref = "refs/tags/v0.3.2";
  inputs.src-neel-v0_3_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jester".type = "github";
  # inputs."jester".owner = "riinr";
  # inputs."jester".repo = "flake-nimble";
  # inputs."jester".ref = "flake-pinning";
  # inputs."jester".dir = "nimpkgs/j/jester";
  # inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."ws".type = "github";
  # inputs."ws".owner = "riinr";
  # inputs."ws".repo = "flake-nimble";
  # inputs."ws".ref = "flake-pinning";
  # inputs."ws".dir = "nimpkgs/w/ws";
  # inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-Neel-v0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Neel-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Neel-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}