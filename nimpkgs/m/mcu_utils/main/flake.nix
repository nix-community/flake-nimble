{
  description = ''Utilities and simple helpers for programming with Nim on embedded MCU devices'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mcu_utils-main.flake = false;
  inputs.src-mcu_utils-main.type = "github";
  inputs.src-mcu_utils-main.owner = "EmbeddedNim";
  inputs.src-mcu_utils-main.repo = "mcu_utils";
  inputs.src-mcu_utils-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mcu_utils-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcu_utils-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mcu_utils-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}