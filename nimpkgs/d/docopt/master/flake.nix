{
  description = ''Command-line args parser based on Usage message'';
  inputs.src-docopt-master.flake = false;
  inputs.src-docopt-master.type = "github";
  inputs.src-docopt-master.owner = "docopt";
  inputs.src-docopt-master.repo = "docopt.nim";
  inputs.src-docopt-master.ref = "refs/heads/master";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-docopt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docopt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-docopt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}