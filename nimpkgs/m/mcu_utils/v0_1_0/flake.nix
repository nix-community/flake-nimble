{
  description = ''Utilities and simple helpers for programming with Nim on embedded MCU devices'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mcu_utils-v0_1_0.flake = false;
  inputs.src-mcu_utils-v0_1_0.type = "github";
  inputs.src-mcu_utils-v0_1_0.owner = "EmbeddedNim";
  inputs.src-mcu_utils-v0_1_0.repo = "mcu_utils";
  inputs.src-mcu_utils-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-mcu_utils-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mcu_utils-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcu_utils-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mcu_utils-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}