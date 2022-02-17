{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_11_8.flake = false;
  inputs.src-hmisc-v0_11_8.type = "github";
  inputs.src-hmisc-v0_11_8.owner = "haxscramper";
  inputs.src-hmisc-v0_11_8.repo = "hmisc";
  inputs.src-hmisc-v0_11_8.ref = "refs/tags/v0.11.8";
  
  
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

  
  inputs."benchy".type = "github";
  inputs."benchy".owner = "riinr";
  inputs."benchy".repo = "flake-nimble";
  inputs."benchy".ref = "flake-pinning";
  inputs."benchy".dir = "nimpkgs/b/benchy";

  outputs = { self, nixpkgs, src-hmisc-v0_11_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_11_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_11_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}