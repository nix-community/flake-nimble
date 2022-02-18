{
  description = ''osu! replay parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-osureplay-v0_0_3.flake = false;
  inputs.src-osureplay-v0_0_3.type = "github";
  inputs.src-osureplay-v0_0_3.owner = "Yardanico";
  inputs.src-osureplay-v0_0_3.repo = "nim-osureplay";
  inputs.src-osureplay-v0_0_3.ref = "refs/tags/v0.0.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-osureplay-v0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osureplay-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-osureplay-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}