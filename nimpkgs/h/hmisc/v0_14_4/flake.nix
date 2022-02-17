{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_14_4.flake = false;
  inputs.src-hmisc-v0_14_4.type = "github";
  inputs.src-hmisc-v0_14_4.owner = "haxscramper";
  inputs.src-hmisc-v0_14_4.repo = "hmisc";
  inputs.src-hmisc-v0_14_4.ref = "refs/tags/v0.14.4";
  
  
  inputs."benchy".type = "github";
  inputs."benchy".owner = "riinr";
  inputs."benchy".repo = "flake-nimble";
  inputs."benchy".ref = "flake-pinning";
  inputs."benchy".dir = "nimpkgs/b/benchy";

  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-hmisc-v0_14_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_14_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_14_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}