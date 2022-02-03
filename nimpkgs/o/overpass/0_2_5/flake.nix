{
  description = ''OpenStreetMap Overpass API Lib'';
  inputs.src-overpass-0_2_5.flake = false;
  inputs.src-overpass-0_2_5.type = "github";
  inputs.src-overpass-0_2_5.owner = "juancarlospaco";
  inputs.src-overpass-0_2_5.repo = "nim-overpass";
  inputs.src-overpass-0_2_5.ref = "refs/tags/0.2.5";
  
  outputs = { self, nixpkgs, src-overpass-0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-overpass-0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-overpass-0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}