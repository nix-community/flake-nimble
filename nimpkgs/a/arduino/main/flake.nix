{
  description = ''Arduino bindings for Nim'';
  inputs.src-arduino-main.flake = false;
  inputs.src-arduino-main.type = "github";
  inputs.src-arduino-main.owner = "markspanbroek";
  inputs.src-arduino-main.repo = "nim-arduino";
  inputs.src-arduino-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-arduino-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arduino-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arduino-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}