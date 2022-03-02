{
  description = ''Bindings for the InterSense SDK'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-isense-master.flake = false;
  inputs.src-isense-master.type = "github";
  inputs.src-isense-master.owner = "nimious";
  inputs.src-isense-master.repo = "isense";
  inputs.src-isense-master.ref = "refs/heads/master";
  inputs.src-isense-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-isense-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isense-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-isense-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}