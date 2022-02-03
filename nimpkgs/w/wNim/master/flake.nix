{
  description = ''Nim's Windows GUI Framework.'';
  inputs.src-wnim-master.flake = false;
  inputs.src-wnim-master.type = "github";
  inputs.src-wnim-master.owner = "khchen";
  inputs.src-wnim-master.repo = "wNim";
  inputs.src-wnim-master.ref = "refs/heads/master";
  
  
  inputs."winim".url = "path:../../../w/winim";
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";

  
  inputs."npeg".url = "path:../../../n/npeg";
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."memlib".url = "path:../../../m/memlib";
  inputs."memlib".type = "github";
  inputs."memlib".owner = "riinr";
  inputs."memlib".repo = "flake-nimble";
  inputs."memlib".ref = "flake-pinning";
  inputs."memlib".dir = "nimpkgs/m/memlib";

  outputs = { self, nixpkgs, src-wNim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wNim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wNim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}