{
  description = ''Tiled map loader for the Nim programming language'';
  inputs.src-nim_tiled-master.flake = false;
  inputs.src-nim_tiled-master.type = "github";
  inputs.src-nim_tiled-master.owner = "SkyVault";
  inputs.src-nim_tiled-master.repo = "nim-tiled";
  inputs.src-nim_tiled-master.ref = "refs/heads/master";
  
  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  outputs = { self, nixpkgs, src-nim_tiled-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_tiled-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_tiled-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}