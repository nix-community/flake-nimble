{
  description = ''Cover Art Archive API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."coverartarchive-master".type = "github";
  inputs."coverartarchive-master".owner = "riinr";
  inputs."coverartarchive-master".repo = "flake-nimble";
  inputs."coverartarchive-master".ref = "flake-pinning";
  inputs."coverartarchive-master".dir = "nimpkgs/c/coverartarchive/master";
  inputs."coverartarchive-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coverartarchive-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}