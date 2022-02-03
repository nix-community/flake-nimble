{
  description = ''Winim minified code generator'';
  inputs.src-winimx-master.flake = false;
  inputs.src-winimx-master.type = "github";
  inputs.src-winimx-master.owner = "khchen";
  inputs.src-winimx-master.repo = "winimx";
  inputs.src-winimx-master.ref = "refs/heads/master";
  
  
  inputs."winim".url = "path:../../../w/winim";
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";

  
  inputs."zippy".url = "path:../../../z/zippy";
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  
  inputs."jsony".url = "path:../../../j/jsony";
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  outputs = { self, nixpkgs, src-winimx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winimx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-winimx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}