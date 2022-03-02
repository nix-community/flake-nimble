{
  description = ''Obsolete - please use isense instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-io-isense-master.flake = false;
  inputs.src-io-isense-master.type = "github";
  inputs.src-io-isense-master.owner = "nimious";
  inputs.src-io-isense-master.repo = "io-isense";
  inputs.src-io-isense-master.ref = "refs/heads/master";
  inputs.src-io-isense-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-io-isense-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-isense-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-io-isense-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}