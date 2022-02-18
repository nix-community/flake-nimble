{
  description = ''Nim modules for access to system Bluetooth resources.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimbluez-master.flake = false;
  inputs.src-nimbluez-master.type = "github";
  inputs.src-nimbluez-master.owner = "electric-Blue";
  inputs.src-nimbluez-master.repo = "NimBluez";
  inputs.src-nimbluez-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbluez-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbluez-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbluez-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}