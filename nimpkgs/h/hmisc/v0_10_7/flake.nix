{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_10_7.flake = false;
  inputs.src-hmisc-v0_10_7.type = "github";
  inputs.src-hmisc-v0_10_7.owner = "haxscramper";
  inputs.src-hmisc-v0_10_7.repo = "hmisc";
  inputs.src-hmisc-v0_10_7.ref = "refs/tags/v0.10.7";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."fusion".url = "path:../../../f/fusion";
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, src-hmisc-v0_10_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_10_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_10_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}