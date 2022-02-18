{
  description = ''A pure-nim implementation of the STOMP protocol for machine messaging.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."stomp-master".type = "github";
  inputs."stomp-master".owner = "riinr";
  inputs."stomp-master".repo = "flake-nimble";
  inputs."stomp-master".ref = "flake-pinning";
  inputs."stomp-master".dir = "nimpkgs/s/stomp/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}