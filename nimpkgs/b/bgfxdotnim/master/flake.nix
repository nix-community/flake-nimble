{
  description = ''bindings to bgfx c99 api'';
  inputs.src-bgfxdotnim-master.flake = false;
  inputs.src-bgfxdotnim-master.type = "github";
  inputs.src-bgfxdotnim-master.owner = "zacharycarter";
  inputs.src-bgfxdotnim-master.repo = "bgfx.nim";
  inputs.src-bgfxdotnim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bgfxdotnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bgfxdotnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bgfxdotnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}