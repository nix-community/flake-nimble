{
  description = ''Read metadata from jpeg and tiff images.'';
  inputs.src-metar-v0_1_23.flake = false;
  inputs.src-metar-v0_1_23.type = "github";
  inputs.src-metar-v0_1_23.owner = "flenniken";
  inputs.src-metar-v0_1_23.repo = "metar";
  inputs.src-metar-v0_1_23.ref = "refs/tags/v0.1.23";
  
  outputs = { self, nixpkgs, src-metar-v0_1_23, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metar-v0_1_23;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-metar-v0_1_23"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}