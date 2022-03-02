{
  description = ''Wrapper that implements some of wiringPi's function for controlling a Raspberry Pi'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wiringpinim-master".type = "github";
  inputs."wiringpinim-master".owner = "riinr";
  inputs."wiringpinim-master".repo = "flake-nimble";
  inputs."wiringpinim-master".ref = "flake-pinning";
  inputs."wiringpinim-master".dir = "nimpkgs/w/wiringpinim/master";
  inputs."wiringpinim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiringpinim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}