{
  description = ''osu! replay parser'';
  inputs.src-osureplay-v0_0_3.flake = false;
  inputs.src-osureplay-v0_0_3.type = "github";
  inputs.src-osureplay-v0_0_3.owner = "Yardanico";
  inputs.src-osureplay-v0_0_3.repo = "nim-osureplay";
  inputs.src-osureplay-v0_0_3.ref = "refs/tags/v0.0.3";
  
  outputs = { self, nixpkgs, src-osureplay-v0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osureplay-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-osureplay-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}