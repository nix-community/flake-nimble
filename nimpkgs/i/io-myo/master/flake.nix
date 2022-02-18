{
  description = ''Obsolete - please use myo instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-io-myo-master.flake = false;
  inputs.src-io-myo-master.type = "github";
  inputs.src-io-myo-master.owner = "nimious";
  inputs.src-io-myo-master.repo = "io-myo";
  inputs.src-io-myo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-io-myo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-myo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-io-myo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}