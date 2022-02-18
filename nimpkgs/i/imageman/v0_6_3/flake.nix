{
  description = ''Image manipulation library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-imageman-v0_6_3.flake = false;
  inputs.src-imageman-v0_6_3.type = "github";
  inputs.src-imageman-v0_6_3.owner = "SolitudeSF";
  inputs.src-imageman-v0_6_3.repo = "imageman";
  inputs.src-imageman-v0_6_3.ref = "refs/tags/v0.6.3";
  
  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";

  outputs = { self, nixpkgs, flakeNimbleLib, src-imageman-v0_6_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imageman-v0_6_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-imageman-v0_6_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}