{
  description = ''bindings to bgfx c99 api'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bgfxdotnim-master.flake = false;
  inputs.src-bgfxdotnim-master.type = "github";
  inputs.src-bgfxdotnim-master.owner = "zacharycarter";
  inputs.src-bgfxdotnim-master.repo = "bgfx.nim";
  inputs.src-bgfxdotnim-master.ref = "refs/heads/master";
  inputs.src-bgfxdotnim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bgfxdotnim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bgfxdotnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bgfxdotnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}