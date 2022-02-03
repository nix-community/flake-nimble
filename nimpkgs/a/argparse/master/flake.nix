{
  description = ''WIP strongly-typed argument parser with sub command support'';
  inputs.src-argparse-master.flake = false;
  inputs.src-argparse-master.type = "github";
  inputs.src-argparse-master.owner = "iffy";
  inputs.src-argparse-master.repo = "nim-argparse";
  inputs.src-argparse-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-argparse-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argparse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-argparse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}