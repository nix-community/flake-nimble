{
  description = ''View nim packages in your browser.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimlist-master.flake = false;
  inputs.src-nimlist-master.type = "github";
  inputs.src-nimlist-master.owner = "flenniken";
  inputs.src-nimlist-master.repo = "nimlist";
  inputs.src-nimlist-master.ref = "refs/heads/master";
  inputs.src-nimlist-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimlist-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlist-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimlist-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}