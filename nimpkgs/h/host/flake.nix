{
  description = ''A program to staticlly host files or directories over HTTP'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."host-master".type = "github";
  inputs."host-master".owner = "riinr";
  inputs."host-master".repo = "flake-nimble";
  inputs."host-master".ref = "flake-pinning";
  inputs."host-master".dir = "nimpkgs/h/host/master";
  inputs."host-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."host-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}