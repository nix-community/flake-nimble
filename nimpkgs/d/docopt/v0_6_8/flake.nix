{
  description = ''Command-line args parser based on Usage message'';
  inputs.src-docopt-v0_6_8.flake = false;
  inputs.src-docopt-v0_6_8.type = "github";
  inputs.src-docopt-v0_6_8.owner = "docopt";
  inputs.src-docopt-v0_6_8.repo = "docopt.nim";
  inputs.src-docopt-v0_6_8.ref = "refs/tags/v0.6.8";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-docopt-v0_6_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docopt-v0_6_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-docopt-v0_6_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}