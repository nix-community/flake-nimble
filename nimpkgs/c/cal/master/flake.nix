{
  description = ''A simple interactive calculator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cal-master.flake = false;
  inputs.src-cal-master.type = "github";
  inputs.src-cal-master.owner = "xflywind";
  inputs.src-cal-master.repo = "cal";
  inputs.src-cal-master.ref = "refs/heads/master";
  inputs.src-cal-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cal-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}