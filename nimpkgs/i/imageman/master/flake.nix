{
  description = ''Image manipulation library'';
  inputs.src-imageman-master.flake = false;
  inputs.src-imageman-master.type = "github";
  inputs.src-imageman-master.owner = "SolitudeSF";
  inputs.src-imageman-master.repo = "imageman";
  inputs.src-imageman-master.ref = "refs/heads/master";
  
  
  inputs."stb_image".url = "path:../../../s/stb_image";
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";

  outputs = { self, nixpkgs, src-imageman-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imageman-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-imageman-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}