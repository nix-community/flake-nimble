{
  description = ''i3 IPC client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."i3ipc-master".type = "github";
  inputs."i3ipc-master".owner = "riinr";
  inputs."i3ipc-master".repo = "flake-nimble";
  inputs."i3ipc-master".ref = "flake-pinning";
  inputs."i3ipc-master".dir = "nimpkgs/i/i3ipc/master";
  inputs."i3ipc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."i3ipc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}