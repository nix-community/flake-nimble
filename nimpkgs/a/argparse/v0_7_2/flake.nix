{
  description = ''WIP strongly-typed argument parser with sub command support'';
  inputs.src-argparse-v0_7_2.flake = false;
  inputs.src-argparse-v0_7_2.type = "github";
  inputs.src-argparse-v0_7_2.owner = "iffy";
  inputs.src-argparse-v0_7_2.repo = "nim-argparse";
  inputs.src-argparse-v0_7_2.ref = "refs/tags/v0.7.2";
  
  outputs = { self, nixpkgs, src-argparse-v0_7_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-argparse-v0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-argparse-v0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}