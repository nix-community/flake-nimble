{
  description = ''Keyboard typing emulator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-autotyper-v0_2_0.flake = false;
  inputs.src-autotyper-v0_2_0.type = "github";
  inputs.src-autotyper-v0_2_0.owner = "kijowski";
  inputs.src-autotyper-v0_2_0.repo = "autotyper";
  inputs.src-autotyper-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-autotyper-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-autotyper-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-autotyper-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-autotyper-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}