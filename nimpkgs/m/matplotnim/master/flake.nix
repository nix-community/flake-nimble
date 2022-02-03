{
  description = ''A Nim wrapper for Python's matplotlib'';
  inputs.src-matplotnim-master.flake = false;
  inputs.src-matplotnim-master.type = "github";
  inputs.src-matplotnim-master.owner = "ruivieira";
  inputs.src-matplotnim-master.repo = "matplotnim";
  inputs.src-matplotnim-master.ref = "refs/heads/master";
  
  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  
  inputs."nimpy".url = "path:../../../n/nimpy";
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";

  outputs = { self, nixpkgs, src-matplotnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-matplotnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-matplotnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}