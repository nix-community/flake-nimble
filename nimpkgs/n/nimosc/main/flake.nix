{
  description = ''A wrapper around liblo for the Open Sound Control (OSC) protocol'';
  inputs.src-nimosc-main.flake = false;
  inputs.src-nimosc-main.type = "github";
  inputs.src-nimosc-main.owner = "Psirus";
  inputs.src-nimosc-main.repo = "NimOSC";
  inputs.src-nimosc-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-nimosc-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimosc-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimosc-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}