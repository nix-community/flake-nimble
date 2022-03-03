{
  description = ''A simple and free whois client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."whois-master".type = "github";
  inputs."whois-master".owner = "riinr";
  inputs."whois-master".repo = "flake-nimble";
  inputs."whois-master".ref = "flake-pinning";
  inputs."whois-master".dir = "nimpkgs/w/whois/master";
  inputs."whois-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."whois-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}