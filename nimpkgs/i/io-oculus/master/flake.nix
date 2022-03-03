{
  description = ''Obsolete - please use oculus instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-io-oculus-master.flake = false;
  inputs.src-io-oculus-master.type = "github";
  inputs.src-io-oculus-master.owner = "nimious";
  inputs.src-io-oculus-master.repo = "io-oculus";
  inputs.src-io-oculus-master.ref = "refs/heads/master";
  inputs.src-io-oculus-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-io-oculus-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-oculus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-io-oculus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}