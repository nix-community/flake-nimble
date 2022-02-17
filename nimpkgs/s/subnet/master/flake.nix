{
  description = ''subnet prints subnet mask in human readable.'';
  inputs.src-subnet-master.flake = false;
  inputs.src-subnet-master.type = "github";
  inputs.src-subnet-master.owner = "jiro4989";
  inputs.src-subnet-master.repo = "subnet";
  inputs.src-subnet-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-subnet-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-subnet-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-subnet-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}