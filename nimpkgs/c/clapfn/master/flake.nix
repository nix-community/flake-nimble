{
  description = ''A fast and simple command line argument parser inspired by Python's argparse.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-clapfn-master.flake = false;
  inputs.src-clapfn-master.type = "github";
  inputs.src-clapfn-master.owner = "oliversandli";
  inputs.src-clapfn-master.repo = "clapfn";
  inputs.src-clapfn-master.ref = "refs/heads/master";
  inputs.src-clapfn-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-clapfn-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clapfn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-clapfn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}