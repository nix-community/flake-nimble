{
  description = ''ski is library for SKI combinator.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ski-master.flake = false;
  inputs.src-ski-master.type = "github";
  inputs.src-ski-master.owner = "jiro4989";
  inputs.src-ski-master.repo = "ski";
  inputs.src-ski-master.ref = "refs/heads/master";
  inputs.src-ski-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ski-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ski-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ski-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}