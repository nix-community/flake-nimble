{
  description = ''Yet another iterator library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mangle-master".type = "github";
  inputs."mangle-master".owner = "riinr";
  inputs."mangle-master".repo = "flake-nimble";
  inputs."mangle-master".ref = "flake-pinning";
  inputs."mangle-master".dir = "nimpkgs/m/mangle/master";
  inputs."mangle-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mangle-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}