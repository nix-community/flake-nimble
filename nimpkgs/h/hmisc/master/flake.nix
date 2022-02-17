{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-master.flake = false;
  inputs.src-hmisc-master.type = "github";
  inputs.src-hmisc-master.owner = "haxscramper";
  inputs.src-hmisc-master.repo = "hmisc";
  inputs.src-hmisc-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-hmisc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}