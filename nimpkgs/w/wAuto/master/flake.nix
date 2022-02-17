{
  description = ''Windows automation module'';
  inputs.src-wauto-master.flake = false;
  inputs.src-wauto-master.type = "github";
  inputs.src-wauto-master.owner = "khchen";
  inputs.src-wauto-master.repo = "wAuto";
  inputs.src-wauto-master.ref = "refs/heads/master";
  
  
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";

  
  inputs."wnim".type = "github";
  inputs."wnim".owner = "riinr";
  inputs."wnim".repo = "flake-nimble";
  inputs."wnim".ref = "flake-pinning";
  inputs."wnim".dir = "nimpkgs/w/wnim";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, src-wAuto-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wAuto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wAuto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}