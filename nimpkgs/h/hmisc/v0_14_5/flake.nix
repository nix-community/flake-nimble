{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_14_5.flake = false;
  inputs.src-hmisc-v0_14_5.type = "github";
  inputs.src-hmisc-v0_14_5.owner = "haxscramper";
  inputs.src-hmisc-v0_14_5.repo = "hmisc";
  inputs.src-hmisc-v0_14_5.ref = "refs/tags/v0.14.5";
  
  
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

  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-hmisc-v0_14_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_14_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_14_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}