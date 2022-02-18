{
  description = ''Nim modules for access to system Bluetooth resources.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimbluez-v0_1_1.flake = false;
  inputs.src-nimbluez-v0_1_1.type = "github";
  inputs.src-nimbluez-v0_1_1.owner = "electric-Blue";
  inputs.src-nimbluez-v0_1_1.repo = "NimBluez";
  inputs.src-nimbluez-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbluez-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbluez-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbluez-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}