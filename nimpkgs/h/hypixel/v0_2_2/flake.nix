{
  description = ''The Hypixel API, in Nim.'';
  inputs.src-hypixel-v0_2_2.flake = false;
  inputs.src-hypixel-v0_2_2.type = "github";
  inputs.src-hypixel-v0_2_2.owner = "tonogram";
  inputs.src-hypixel-v0_2_2.repo = "hypixel-nim";
  inputs.src-hypixel-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-hypixel-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hypixel-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hypixel-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}