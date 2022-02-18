{
  description = ''Wrapper that implements some of wiringPi's function for controlling a Raspberry Pi'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."wiringPiNim-master".type = "github";
  inputs."wiringPiNim-master".owner = "riinr";
  inputs."wiringPiNim-master".repo = "flake-nimble";
  inputs."wiringPiNim-master".ref = "flake-pinning";
  inputs."wiringPiNim-master".dir = "nimpkgs/w/wiringPiNim/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}