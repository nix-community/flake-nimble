{
  description = ''Lua convenience library for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."luna-master".type = "github";
  inputs."luna-master".owner = "riinr";
  inputs."luna-master".repo = "flake-nimble";
  inputs."luna-master".ref = "flake-pinning";
  inputs."luna-master".dir = "nimpkgs/l/luna/master";
  inputs."luna-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."luna-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}