{
  description = ''A wrapper around liblo for the Open Sound Control (OSC) protocol'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimosc-main.flake = false;
  inputs.src-nimosc-main.type = "github";
  inputs.src-nimosc-main.owner = "Psirus";
  inputs.src-nimosc-main.repo = "NimOSC";
  inputs.src-nimosc-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimosc-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimosc-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimosc-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}