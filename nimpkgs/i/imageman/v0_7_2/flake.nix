{
  description = ''Image manipulation library'';
  inputs.src-imageman-v0_7_2.flake = false;
  inputs.src-imageman-v0_7_2.type = "github";
  inputs.src-imageman-v0_7_2.owner = "SolitudeSF";
  inputs.src-imageman-v0_7_2.repo = "imageman";
  inputs.src-imageman-v0_7_2.ref = "refs/tags/v0.7.2";
  
  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";

  outputs = { self, nixpkgs, src-imageman-v0_7_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imageman-v0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-imageman-v0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}