{
  description = ''Api Calls for Ford vehicles equipped with the fordpass app.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ffpass-master.flake = false;
  inputs.src-ffpass-master.type = "github";
  inputs.src-ffpass-master.owner = "bunkford";
  inputs.src-ffpass-master.repo = "ffpass";
  inputs.src-ffpass-master.ref = "refs/heads/master";
  inputs.src-ffpass-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ffpass-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ffpass-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ffpass-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}