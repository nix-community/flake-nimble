{
  description = ''A simple gap buffer implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."gapbuffer-master".type = "github";
  inputs."gapbuffer-master".owner = "riinr";
  inputs."gapbuffer-master".repo = "flake-nimble";
  inputs."gapbuffer-master".ref = "flake-pinning";
  inputs."gapbuffer-master".dir = "nimpkgs/g/gapbuffer/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}