{
  description = ''Convert bytes to kilobytes, megabytes, gigabytes, etc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bytes2human-master".type = "github";
  inputs."bytes2human-master".owner = "riinr";
  inputs."bytes2human-master".repo = "flake-nimble";
  inputs."bytes2human-master".ref = "flake-pinning";
  inputs."bytes2human-master".dir = "nimpkgs/b/bytes2human/master";
  inputs."bytes2human-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytes2human-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}