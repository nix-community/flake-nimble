{
  description = ''ADB protocol implementation in Nim'';
  inputs.src-adb-v0_1_0.flake = false;
  inputs.src-adb-v0_1_0.type = "github";
  inputs.src-adb-v0_1_0.owner = "Yardanico";
  inputs.src-adb-v0_1_0.repo = "nim-adb";
  inputs.src-adb-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-adb-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-adb-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-adb-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}