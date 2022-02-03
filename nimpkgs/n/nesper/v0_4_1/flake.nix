{
  description = ''Nim wrappers for ESP-IDF (ESP32)'';
  inputs.src-nesper-v0_4_1.flake = false;
  inputs.src-nesper-v0_4_1.type = "github";
  inputs.src-nesper-v0_4_1.owner = "elcritch";
  inputs.src-nesper-v0_4_1.repo = "nesper";
  inputs.src-nesper-v0_4_1.ref = "refs/tags/v0.4.1";
  
  outputs = { self, nixpkgs, src-nesper-v0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesper-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesper-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}