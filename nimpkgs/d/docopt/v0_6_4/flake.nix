{
  description = ''Command-line args parser based on Usage message'';
  inputs.src-docopt-v0_6_4.flake = false;
  inputs.src-docopt-v0_6_4.type = "github";
  inputs.src-docopt-v0_6_4.owner = "docopt";
  inputs.src-docopt-v0_6_4.repo = "docopt.nim";
  inputs.src-docopt-v0_6_4.ref = "refs/tags/v0.6.4";
  
  outputs = { self, nixpkgs, src-docopt-v0_6_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docopt-v0_6_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-docopt-v0_6_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}