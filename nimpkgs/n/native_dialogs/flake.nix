{
  description = ''Implements framework-agnostic native operating system dialogs calls'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."native_dialogs-master".type = "github";
  inputs."native_dialogs-master".owner = "riinr";
  inputs."native_dialogs-master".repo = "flake-nimble";
  inputs."native_dialogs-master".ref = "flake-pinning";
  inputs."native_dialogs-master".dir = "nimpkgs/n/native_dialogs/master";
  inputs."native_dialogs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."native_dialogs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}