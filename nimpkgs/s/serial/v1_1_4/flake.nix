{
  description = ''A library to operate serial ports using pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-serial-v1_1_4.flake = false;
  inputs.src-serial-v1_1_4.type = "github";
  inputs.src-serial-v1_1_4.owner = "euantorano";
  inputs.src-serial-v1_1_4.repo = "serial.nim";
  inputs.src-serial-v1_1_4.ref = "refs/tags/v1.1.4";
  inputs.src-serial-v1_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-serial-v1_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serial-v1_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-serial-v1_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}