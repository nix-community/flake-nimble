{
  description = ''Zero-wrapping C imports in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-futhark-master.flake = false;
  inputs.src-futhark-master.type = "github";
  inputs.src-futhark-master.owner = "PMunch";
  inputs.src-futhark-master.repo = "futhark";
  inputs.src-futhark-master.ref = "refs/heads/master";
  inputs.src-futhark-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-futhark-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-futhark-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-futhark-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}