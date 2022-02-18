{
  description = ''High-level and low-level interfaces to python and lua'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimborg-master".type = "github";
  inputs."nimborg-master".owner = "riinr";
  inputs."nimborg-master".repo = "flake-nimble";
  inputs."nimborg-master".ref = "flake-pinning";
  inputs."nimborg-master".dir = "nimpkgs/n/nimborg/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
