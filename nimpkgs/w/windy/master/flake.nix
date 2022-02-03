{
  description = ''Windowing library for Nim using OS native APIs.'';
  inputs.src-windy-master.flake = false;
  inputs.src-windy-master.type = "github";
  inputs.src-windy-master.owner = "treeform";
  inputs.src-windy-master.repo = "windy";
  inputs.src-windy-master.ref = "refs/heads/master";
  
  
  inputs."opengl".url = "path:../../../o/opengl";
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  
  inputs."pixie".url = "path:../../../p/pixie";
  inputs."pixie".type = "github";
  inputs."pixie".owner = "riinr";
  inputs."pixie".repo = "flake-nimble";
  inputs."pixie".ref = "flake-pinning";
  inputs."pixie".dir = "nimpkgs/p/pixie";

  outputs = { self, nixpkgs, src-windy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-windy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-windy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}