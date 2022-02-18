{
  description = ''A Jester web plugin that gets a pooled MongoDB connection for each web query.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."jestermongopool-master".type = "github";
  inputs."jestermongopool-master".owner = "riinr";
  inputs."jestermongopool-master".repo = "flake-nimble";
  inputs."jestermongopool-master".ref = "flake-pinning";
  inputs."jestermongopool-master".dir = "nimpkgs/j/jestermongopool/master";

    inputs."jestermongopool-v1_0_1".type = "github";
  inputs."jestermongopool-v1_0_1".owner = "riinr";
  inputs."jestermongopool-v1_0_1".repo = "flake-nimble";
  inputs."jestermongopool-v1_0_1".ref = "flake-pinning";
  inputs."jestermongopool-v1_0_1".dir = "nimpkgs/j/jestermongopool/v1_0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}