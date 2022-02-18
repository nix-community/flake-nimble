{
  description = ''GitIgnore Generation Interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gigi-v0_1_0.flake = false;
  inputs.src-gigi-v0_1_0.type = "github";
  inputs.src-gigi-v0_1_0.owner = "attakei";
  inputs.src-gigi-v0_1_0.repo = "gigi";
  inputs.src-gigi-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."puppy".type = "github";
  inputs."puppy".owner = "riinr";
  inputs."puppy".repo = "flake-nimble";
  inputs."puppy".ref = "flake-pinning";
  inputs."puppy".dir = "nimpkgs/p/puppy";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gigi-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gigi-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gigi-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}