{
  description = ''Loop efficiently over a variadic number of containers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-loopfusion-master.flake = false;
  inputs.src-loopfusion-master.type = "github";
  inputs.src-loopfusion-master.owner = "numforge";
  inputs.src-loopfusion-master.repo = "loopfusion";
  inputs.src-loopfusion-master.ref = "refs/heads/master";
  inputs.src-loopfusion-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-loopfusion-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loopfusion-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-loopfusion-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}