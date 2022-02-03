{
  description = ''Utilities and simple helpers for programming with Nim on embedded MCU devices'';
  inputs.src-mcu_utils-v0_1_0.flake = false;
  inputs.src-mcu_utils-v0_1_0.type = "github";
  inputs.src-mcu_utils-v0_1_0.owner = "EmbeddedNim";
  inputs.src-mcu_utils-v0_1_0.repo = "mcu_utils";
  inputs.src-mcu_utils-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-mcu_utils-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcu_utils-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mcu_utils-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}