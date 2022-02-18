{
  description = ''Hackathon Web Scratchpad for teaching Nim on events using Wifi with limited or no Internet'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."hackpad-master".type = "github";
  inputs."hackpad-master".owner = "riinr";
  inputs."hackpad-master".repo = "flake-nimble";
  inputs."hackpad-master".ref = "flake-pinning";
  inputs."hackpad-master".dir = "nimpkgs/h/hackpad/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}