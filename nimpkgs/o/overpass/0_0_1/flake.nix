{
  description = ''OpenStreetMap Overpass API Lib'';
  inputs.src-overpass-0_0_1.flake = false;
  inputs.src-overpass-0_0_1.type = "github";
  inputs.src-overpass-0_0_1.owner = "juancarlospaco";
  inputs.src-overpass-0_0_1.repo = "nim-overpass";
  inputs.src-overpass-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-overpass-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-overpass-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-overpass-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}