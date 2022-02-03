{
  description = ''The Hypixel API, in Nim.'';
  inputs.src-hypixel-v0_2_0.flake = false;
  inputs.src-hypixel-v0_2_0.type = "github";
  inputs.src-hypixel-v0_2_0.owner = "tonogram";
  inputs.src-hypixel-v0_2_0.repo = "hypixel-nim";
  inputs.src-hypixel-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-hypixel-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hypixel-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hypixel-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}