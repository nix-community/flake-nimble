{
  description = ''Collection of Diff stringifications (and reversals)'';
  inputs.src-diffoutput-master.flake = false;
  inputs.src-diffoutput-master.type = "github";
  inputs.src-diffoutput-master.owner = "JohnAD";
  inputs.src-diffoutput-master.repo = "diffoutput";
  inputs.src-diffoutput-master.ref = "refs/heads/master";
  
  
  inputs."diff".url = "path:../../../d/diff";
  inputs."diff".type = "github";
  inputs."diff".owner = "riinr";
  inputs."diff".repo = "flake-nimble";
  inputs."diff".ref = "flake-pinning";
  inputs."diff".dir = "nimpkgs/d/diff";

  outputs = { self, nixpkgs, src-diffoutput-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-diffoutput-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-diffoutput-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}