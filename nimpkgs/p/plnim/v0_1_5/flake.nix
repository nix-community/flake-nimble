{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-plnim-v0_1_5.flake = false;
  inputs.src-plnim-v0_1_5.type = "github";
  inputs.src-plnim-v0_1_5.owner = "luisacosta828";
  inputs.src-plnim-v0_1_5.repo = "plnim";
  inputs.src-plnim-v0_1_5.ref = "refs/tags/v0.1.5";
  
  
  inputs."pgxcrown".type = "github";
  inputs."pgxcrown".owner = "riinr";
  inputs."pgxcrown".repo = "flake-nimble";
  inputs."pgxcrown".ref = "flake-pinning";
  inputs."pgxcrown".dir = "nimpkgs/p/pgxcrown";

  outputs = { self, nixpkgs, flakeNimbleLib, src-plnim-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plnim-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-plnim-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}