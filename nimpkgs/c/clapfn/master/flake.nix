{
  description = ''A fast and simple command line argument parser inspired by Python's argparse.'';
  inputs.src-clapfn-master.flake = false;
  inputs.src-clapfn-master.type = "github";
  inputs.src-clapfn-master.owner = "oliversandli";
  inputs.src-clapfn-master.repo = "clapfn";
  inputs.src-clapfn-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-clapfn-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clapfn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-clapfn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}