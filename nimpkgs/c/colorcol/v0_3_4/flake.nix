{
  description = ''Kakoune plugin for color preview'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-colorcol-v0_3_4.flake = false;
  inputs.src-colorcol-v0_3_4.type = "github";
  inputs.src-colorcol-v0_3_4.owner = "SolitudeSF";
  inputs.src-colorcol-v0_3_4.repo = "colorcol";
  inputs.src-colorcol-v0_3_4.ref = "refs/tags/v0.3.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-colorcol-v0_3_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorcol-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-colorcol-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}