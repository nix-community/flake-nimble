{
  description = ''Arduino bindings for Nim'';
  inputs.src-arduino-0_3_0.flake = false;
  inputs.src-arduino-0_3_0.type = "github";
  inputs.src-arduino-0_3_0.owner = "markspanbroek";
  inputs.src-arduino-0_3_0.repo = "nim-arduino";
  inputs.src-arduino-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-arduino-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arduino-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arduino-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}