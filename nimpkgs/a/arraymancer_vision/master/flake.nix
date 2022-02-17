{
  description = ''Image transformation and visualization utilities for arraymancer'';
  inputs.src-arraymancer_vision-master.flake = false;
  inputs.src-arraymancer_vision-master.type = "github";
  inputs.src-arraymancer_vision-master.owner = "edubart";
  inputs.src-arraymancer_vision-master.repo = "arraymancer-vision";
  inputs.src-arraymancer_vision-master.ref = "refs/heads/master";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";

  outputs = { self, nixpkgs, src-arraymancer_vision-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arraymancer_vision-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arraymancer_vision-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}