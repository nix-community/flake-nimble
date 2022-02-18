{
  description = ''threadsafe memory pool '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sharedmempool-master".type = "github";
  inputs."sharedmempool-master".owner = "riinr";
  inputs."sharedmempool-master".repo = "flake-nimble";
  inputs."sharedmempool-master".ref = "flake-pinning";
  inputs."sharedmempool-master".dir = "nimpkgs/s/sharedmempool/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}