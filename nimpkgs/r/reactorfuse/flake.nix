{
  description = ''Filesystem in userspace (FUSE) for Nim (for reactor.nim library)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."reactorfuse-master".type = "github";
  inputs."reactorfuse-master".owner = "riinr";
  inputs."reactorfuse-master".repo = "flake-nimble";
  inputs."reactorfuse-master".ref = "flake-pinning";
  inputs."reactorfuse-master".dir = "nimpkgs/r/reactorfuse/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}