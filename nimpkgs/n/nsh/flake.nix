{
  description = ''nsh: Nim SHell(cross platform)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nsh-master".type = "github";
  inputs."nsh-master".owner = "riinr";
  inputs."nsh-master".repo = "flake-nimble";
  inputs."nsh-master".ref = "flake-pinning";
  inputs."nsh-master".dir = "nimpkgs/n/nsh/master";
  inputs."nsh-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsh-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}