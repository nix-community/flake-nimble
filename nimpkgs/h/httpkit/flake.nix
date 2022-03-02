{
  description = ''An efficient HTTP tool suite written in pure nim. Help you to write HTTP services or clients via TCP, UDP, or even Unix Domain socket, etc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."httpkit-master".type = "github";
  inputs."httpkit-master".owner = "riinr";
  inputs."httpkit-master".repo = "flake-nimble";
  inputs."httpkit-master".ref = "flake-pinning";
  inputs."httpkit-master".dir = "nimpkgs/h/httpkit/master";
  inputs."httpkit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpkit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}