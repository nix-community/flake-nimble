{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_11_18.flake = false;
  inputs.src-hmisc-v0_11_18.type = "github";
  inputs.src-hmisc-v0_11_18.owner = "haxscramper";
  inputs.src-hmisc-v0_11_18.repo = "hmisc";
  inputs.src-hmisc-v0_11_18.ref = "refs/tags/v0.11.18";
  
  
  inputs."fusion".url = "path:../../../f/fusion";
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  
  inputs."benchy".url = "path:../../../b/benchy";
  inputs."benchy".type = "github";
  inputs."benchy".owner = "riinr";
  inputs."benchy".repo = "flake-nimble";
  inputs."benchy".ref = "flake-pinning";
  inputs."benchy".dir = "nimpkgs/b/benchy";

  
  inputs."jsony".url = "path:../../../j/jsony";
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  outputs = { self, nixpkgs, src-hmisc-v0_11_18, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_11_18;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_11_18"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}