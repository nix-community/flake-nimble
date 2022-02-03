{
  description = ''The Hypixel API, in Nim.'';
  inputs.src-hypixel-v0_2_3.flake = false;
  inputs.src-hypixel-v0_2_3.type = "github";
  inputs.src-hypixel-v0_2_3.owner = "tonogram";
  inputs.src-hypixel-v0_2_3.repo = "hypixel-nim";
  inputs.src-hypixel-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-hypixel-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hypixel-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hypixel-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}