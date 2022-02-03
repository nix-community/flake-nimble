{
  description = ''Nim bindings for the zxcvbn-c password strength estimation library'';
  inputs.src-zxcvbn-master.flake = false;
  inputs.src-zxcvbn-master.type = "github";
  inputs.src-zxcvbn-master.owner = "status-im";
  inputs.src-zxcvbn-master.repo = "nim-zxcvbn";
  inputs.src-zxcvbn-master.ref = "refs/heads/master";
  
  
  inputs."testutils".url = "path:../../../t/testutils";
  inputs."testutils".type = "github";
  inputs."testutils".owner = "riinr";
  inputs."testutils".repo = "flake-nimble";
  inputs."testutils".ref = "flake-pinning";
  inputs."testutils".dir = "nimpkgs/t/testutils";

  outputs = { self, nixpkgs, src-zxcvbn-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zxcvbn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zxcvbn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}