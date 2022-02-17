{
  description = ''subnet prints subnet mask in human readable.'';
  inputs.src-subnet-v1_0_1.flake = false;
  inputs.src-subnet-v1_0_1.type = "github";
  inputs.src-subnet-v1_0_1.owner = "jiro4989";
  inputs.src-subnet-v1_0_1.repo = "subnet";
  inputs.src-subnet-v1_0_1.ref = "refs/tags/v1.0.1";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-subnet-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-subnet-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-subnet-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}