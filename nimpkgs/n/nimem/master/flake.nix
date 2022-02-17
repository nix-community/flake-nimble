{
  description = ''Library for external memory manipulation on a windows process'';
  inputs.src-nimem-master.flake = false;
  inputs.src-nimem-master.type = "github";
  inputs.src-nimem-master.owner = "Sann0";
  inputs.src-nimem-master.repo = "Nimem";
  inputs.src-nimem-master.ref = "refs/heads/master";
  
  
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";

  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-nimem-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimem-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimem-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}