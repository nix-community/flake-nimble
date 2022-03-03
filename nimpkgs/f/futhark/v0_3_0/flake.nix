{
  description = ''Zero-wrapping C imports in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-futhark-v0_3_0.flake = false;
  inputs.src-futhark-v0_3_0.type = "github";
  inputs.src-futhark-v0_3_0.owner = "PMunch";
  inputs.src-futhark-v0_3_0.repo = "futhark";
  inputs.src-futhark-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-futhark-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/pmunch/libclang-nim".type = "github";
  # inputs."https://github.com/pmunch/libclang-nim".owner = "riinr";
  # inputs."https://github.com/pmunch/libclang-nim".repo = "flake-nimble";
  # inputs."https://github.com/pmunch/libclang-nim".ref = "flake-pinning";
  # inputs."https://github.com/pmunch/libclang-nim".dir = "nimpkgs/h/https://github.com/pmunch/libclang-nim";
  # inputs."https://github.com/pmunch/libclang-nim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/pmunch/libclang-nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."termstyle".type = "github";
  # inputs."termstyle".owner = "riinr";
  # inputs."termstyle".repo = "flake-nimble";
  # inputs."termstyle".ref = "flake-pinning";
  # inputs."termstyle".dir = "nimpkgs/t/termstyle";
  # inputs."termstyle".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."termstyle".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."macroutils".type = "github";
  # inputs."macroutils".owner = "riinr";
  # inputs."macroutils".repo = "flake-nimble";
  # inputs."macroutils".ref = "flake-pinning";
  # inputs."macroutils".dir = "nimpkgs/m/macroutils";
  # inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-futhark-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-futhark-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-futhark-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}