{
  description = ''Command-line args parser based on Usage message'';
  inputs.src-docopt-v0_6_7.flake = false;
  inputs.src-docopt-v0_6_7.type = "github";
  inputs.src-docopt-v0_6_7.owner = "docopt";
  inputs.src-docopt-v0_6_7.repo = "docopt.nim";
  inputs.src-docopt-v0_6_7.ref = "refs/tags/v0.6.7";
  
  outputs = { self, nixpkgs, src-docopt-v0_6_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docopt-v0_6_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-docopt-v0_6_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}