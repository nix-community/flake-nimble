{
  description = ''A package to get the MAC address of a local IP address'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."getmac-master".type = "github";
  inputs."getmac-master".owner = "riinr";
  inputs."getmac-master".repo = "flake-nimble";
  inputs."getmac-master".ref = "flake-pinning";
  inputs."getmac-master".dir = "nimpkgs/g/getmac/master";
  inputs."getmac-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getmac-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}