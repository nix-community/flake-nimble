{
  description = ''Utilities and simple helpers for programming with Nim on embedded MCU devices'';
  inputs.src-mcu_utils-main.flake = false;
  inputs.src-mcu_utils-main.type = "github";
  inputs.src-mcu_utils-main.owner = "EmbeddedNim";
  inputs.src-mcu_utils-main.repo = "mcu_utils";
  inputs.src-mcu_utils-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-mcu_utils-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcu_utils-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mcu_utils-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}