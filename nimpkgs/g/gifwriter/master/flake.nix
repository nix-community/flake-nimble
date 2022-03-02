{
  description = ''Animated GIF writing library based on jo_gif'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-gifwriter-master.flake = false;
  inputs.src-gifwriter-master.type = "github";
  inputs.src-gifwriter-master.owner = "rxi";
  inputs.src-gifwriter-master.repo = "gifwriter";
  inputs.src-gifwriter-master.ref = "refs/heads/master";
  inputs.src-gifwriter-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gifwriter-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gifwriter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gifwriter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}