{
  description = ''The Nim framework for VK API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shizuka-stable-1_0_0.flake = false;
  inputs.src-shizuka-stable-1_0_0.type = "github";
  inputs.src-shizuka-stable-1_0_0.owner = "ethosa";
  inputs.src-shizuka-stable-1_0_0.repo = "shizuka";
  inputs.src-shizuka-stable-1_0_0.ref = "refs/tags/stable-1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shizuka-stable-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shizuka-stable-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shizuka-stable-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}