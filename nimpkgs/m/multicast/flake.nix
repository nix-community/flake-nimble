{
  description = ''proc to join (and leave) a multicast group'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."multicast-master".type = "github";
  inputs."multicast-master".owner = "riinr";
  inputs."multicast-master".repo = "flake-nimble";
  inputs."multicast-master".ref = "flake-pinning";
  inputs."multicast-master".dir = "nimpkgs/m/multicast/master";
  inputs."multicast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."multicast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}