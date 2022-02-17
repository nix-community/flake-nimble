{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_11_1.flake = false;
  inputs.src-hmisc-v0_11_1.type = "github";
  inputs.src-hmisc-v0_11_1.owner = "haxscramper";
  inputs.src-hmisc-v0_11_1.repo = "hmisc";
  inputs.src-hmisc-v0_11_1.ref = "refs/tags/v0.11.1";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, src-hmisc-v0_11_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_11_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_11_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}