{
  description = ''A library to operate serial ports using pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-serial-v1_1_5.flake = false;
  inputs.src-serial-v1_1_5.type = "github";
  inputs.src-serial-v1_1_5.owner = "euantorano";
  inputs.src-serial-v1_1_5.repo = "serial.nim";
  inputs.src-serial-v1_1_5.ref = "refs/tags/v1.1.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-serial-v1_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serial-v1_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-serial-v1_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}