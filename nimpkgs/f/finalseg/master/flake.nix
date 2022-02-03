{
  description = ''jieba's finalseg port to nim'';
  inputs.src-finalseg-master.flake = false;
  inputs.src-finalseg-master.type = "github";
  inputs.src-finalseg-master.owner = "bung87";
  inputs.src-finalseg-master.repo = "finalseg";
  inputs.src-finalseg-master.ref = "refs/heads/master";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-finalseg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-finalseg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-finalseg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}