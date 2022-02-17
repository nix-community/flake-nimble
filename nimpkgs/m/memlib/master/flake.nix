{
  description = ''Load Windows DLL from memory'';
  inputs.src-memlib-master.flake = false;
  inputs.src-memlib-master.type = "github";
  inputs.src-memlib-master.owner = "khchen";
  inputs.src-memlib-master.repo = "memlib";
  inputs.src-memlib-master.ref = "refs/heads/master";
  
  
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";

  
  inputs."minhook".type = "github";
  inputs."minhook".owner = "riinr";
  inputs."minhook".repo = "flake-nimble";
  inputs."minhook".ref = "flake-pinning";
  inputs."minhook".dir = "nimpkgs/m/minhook";

  outputs = { self, nixpkgs, src-memlib-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-memlib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-memlib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}